module CheckedStateful where

import Prelude hiding (LT, GT, EQ, id)
import ErrorChecking hiding (evaluate)
import Stateful hiding (evaluate)
import Control.Monad

data CheckedStateful t = CST (Memory -> (Checked t, Memory))

returnChecked cv = CST (\m-> (cv, m))
returnError msg = returnChecked (Error msg)

instance Functor CheckedStateful where
  fmap  = liftM
  
instance Applicative CheckedStateful where
  pure v = returnChecked (Good v)
  (<*>) = ap

instance Monad CheckedStateful where
  return = pure
  (CST c) >>= f =
    CST (\m -> 
      let (val, m') = c m in
        case val of
          Error msg -> (Error msg, m')
          Good v    ->
            let CST f' = f v in
              f' m'
      )
     
evaluate :: Exp -> Env -> CheckedStateful Value
evaluate (Literal v) env     = return v
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
    _ -> returnError ("Expected boolean but found " ++ show av)
-- variables and declarations
evaluate (Variable x) env    =
  case lookup x env of
    Nothing -> returnError ("Variable " ++ x ++ " undefined")
    Just v  -> return v
evaluate (Declare x e body) env = do    -- non-recursive case
  ev <- evaluate e env
  let newEnv = (x, ev) : env
  evaluate body newEnv
-- function definitions and function calls
evaluate (Function x body) env = return (ClosureV x body env)
evaluate (Call fun arg) env = do
  funv <- evaluate fun env
  case funv of
    ClosureV x body closeEnv -> do
      argv <- evaluate arg env
      let newEnv = (x, argv) : closeEnv
      evaluate body newEnv
    _ -> returnError ("Expected function buf found " ++ show funv)

-- mutation operations
evaluate (Seq a b) env = do
  evaluate a env
  evaluate b env
evaluate (Mutable e) env = do
  ev <- evaluate e env
  newMemory ev        
evaluate (Access a) env = do
  av <- evaluate a env
  case av of
    AddressV i -> readMemory i
    _ -> returnError ("Access of invalid memory " ++ show av)
evaluate (Assign a e) env = do
  av <- evaluate a env
  case av of
    AddressV i -> do
      ev <- evaluate e env
      updateMemory ev i
    _ -> returnError ("Update of invalid memory " ++ show av)

newMemory val = CST (\mem-> (Good (AddressV (length mem)), mem ++ [val]))

readMemory i = CST (\mem-> 
             if 0 <= i && i <= length mem 
             then (Good (access i mem), mem) 
             else (Error "Invalid address", mem))

updateMemory val i = CST (\mem-> 
              if 0 <= i && i <= length mem 
              then (Good val, update i val mem) 
              else (Error "Invalid address", mem))

runStateful (CST c) = 
   let (val, mem) = c [] in val

execute exp = runStateful (evaluate exp [])
