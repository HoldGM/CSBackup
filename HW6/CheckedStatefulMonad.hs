module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Stateful hiding (Stateful, evaluate, execute)
import ErrorChecking hiding (evaluate, checked_binary, checked_unary)
import Base
import Data.Maybe
import Operators

data CheckedStateful t = CST(Memory -> (Checked t, Memory))

instance Monad CheckedStateful where
  return val = CST (\m -> (Good val, m))
  (CST a) >>= b = 
    CST (\m ->
      let (val, m') = a m in
        case val of
          Good v ->
            let CST b' = b v in
              b' m'
          Error msg -> (Error msg, m'))
returnError msg = CST(\m -> (Error msg, m))

evaluate :: Exp -> Env -> CheckedStateful Value

evaluate (Literal v) env = return v

evaluate (Unary op a) env = do
	av <- evaluate a env
	checked_unary op av

evaluate (Binary op a b) env = do
	av <- evaluate a env
	bv <- evaluate b env
	checked_binary op av bv

evaluate (If a b c) env = do
	av <- evaluate a env
	case av of
		(BoolV cond) -> evaluate (if cond then b else c) env
		_			 -> returnError("Expected Boolean but found " ++ show av)

evaluate (Variable x) env = 
	case lookup x env of
		Nothing -> returnError ("Variable " ++ x ++ " not found")
		Just v -> return v

evaluate (Declare x e body) env = do
	ev <- evaluate e env
	let newEnv = (x, ev) : env
	evaluate body newEnv

evaluate (Function x body) env = return (ClosureV x body env)

evaluate (Call f arg) env = do
	ClosureV x body closureEnv <- evaluate f env
	argv <- evaluate arg env
	let newEnv = (x, argv) : env
	evaluate body newEnv

evaluate (Seq a b) env = do
	evaluate a env
	evaluate b env

evaluate (Access a) env = do
	av <- evaluate a env
	case av of
		AddressV i -> readMemory i
		_		   -> returnError ("Access Error")

evaluate (Mutable e) env = do
	ev <- evaluate e env
	newMemory ev

evaluate (Assign a e) env = do
	AddressV i <- evaluate a env
	ev <- evaluate e env
	updateMemory ev i

newMemory val = CST(\m -> (Good (AddressV (length m)), m ++[val]))
readMemory i = CST (\m -> 
	if (i >= 0 && i <= length m)
		then
			(Good (access i m), m)
		else
			(Error "Memory access error", m))
updateMemory val i = CST(\m -> 
	if ( i >= 0 && i <= length m)
		then
			(Good (access i m), m)
		else
			(Error "Memory Access Error", m))
returnGood v = CST(\m -> (Good v, m))
runStateful (CST a) = 
	let (val, m) = a [] in val

execute exp = runStateful (evaluate exp [])

checked_unary :: UnaryOp -> Value -> CheckedStateful Value
checked_unary Not (BoolV b) = returnGood (BoolV (not b))
checked_unary Neg (IntV i)  = returnGood (IntV (-i))
checked_unary _   _         = returnError "Type error"

checked_binary :: BinaryOp -> Value -> Value -> CheckedStateful Value
checked_binary Add (IntV a)  (IntV b)  = returnGood (IntV (a + b))
checked_binary Sub (IntV a)  (IntV b)  = returnGood (IntV (a - b))
checked_binary Mul (IntV a)  (IntV b)  = returnGood (IntV (a * b))
checked_binary Div (IntV a)  (IntV 0)  = returnError "Divide by zero"
checked_binary Div (IntV a)  (IntV b)  = returnGood (IntV (a `div` b))
checked_binary And (BoolV a) (BoolV b) = returnGood (BoolV (a && b))
checked_binary Or  (BoolV a) (BoolV b) = returnGood (BoolV (a || b))
checked_binary LT  (IntV a)  (IntV b)  = returnGood (BoolV (a < b))
checked_binary LE  (IntV a)  (IntV b)  = returnGood (BoolV (a <= b))
checked_binary GE  (IntV a)  (IntV b)  = returnGood (BoolV (a >= b))
checked_binary GT  (IntV a)  (IntV b)  = returnGood (BoolV (a > b))
checked_binary EQ  a         b         = returnGood (BoolV (a == b))
checked_binary _   _         _         = returnError "Type error"