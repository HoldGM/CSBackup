module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Stateful hiding (evaluate, execute)
import ErrorChecking hiding (evaluate)
import Operators

data CheckedStateful t = CST(Memory -> (Checked t, Memory))

instance Monad CheckedStateful where
	return val = returnChecked (Good val)
	(CST a) >>= b = CST(\m -> 
		let (val, m') = a m in 
			case val of
				Error msg -> (Error msg, m')
				Return v -> (Return v, m')
				Good v -> let CST b' = b v in b' m')
	
returnError msg = CST(\m -> (Error msg, m))

evaluate :: Exp -> Env -> CheckedStateful Value

evaluate (Literal v) env = return v

evaluate (Unary op a) env = do
	av <- evaluate a env
	returnChecked (checked_unary op av)

evaluate (Binary op a b) env = do
	av <- evaluate a env
	bv <- evaluate b env
	returnChecked (checked_binary op av bv)

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
	fv <- evaluate f env
	case fv of
		ClosureV x body closureEnv -> do
			argv <- evaluate  arg env
			let newEnv = (x, argv) : closureEnv
			handleReturn (evaluate body newEnv)
		_   -> returnError("Expected function buf found " ++ show funv)

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
	av <- evaluate a env
	case av of
		AddressV i -> do
			ev <- evaluate e env
			updateMemory ev i
		_ -> returnError ("Memory Error" ++ show av)

evaluate (ReturnT a) env = do
	av <- evaluate a env
	returnReturn av

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

returnChecked av = CST(\m -> (av, m))

returnReturn av = returnChecked (Return av)

handleReturn :: CheckedStateful Value -> CheckedStateful Value
handleReturn (CST r) = 
	CST(\m -> let (av, m') = r m in
		case av of
			Return v -> (Good v, m')
			Good v -> (Good Undefined, m')
			Error msg -> (Error msg, m'))

execute exp = runStateful (evaluate exp [])
