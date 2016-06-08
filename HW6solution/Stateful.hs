module Stateful where

import Prelude hiding (LT, GT, EQ, id)
import Base
import Data.Maybe

data Value = IntV  Int
           | BoolV Bool
           | ClosureV String Exp Env
           | AddressV Int        -- new
  deriving (Eq, Show)

type Memory = [Value]

access i mem = mem !! i

update :: Int -> Value -> Memory -> Memory
update addr val mem =
  let (before, _:after) = splitAt addr mem in
    before ++ [val] ++ after

type Stateful t = Memory -> (t, Memory)

data Exp = Literal   Value
         | Unary     UnaryOp Exp
         | Binary    BinaryOp Exp Exp
         | If        Exp Exp Exp
         | Variable  String
         | Declare   String Exp Exp
         | Function  String Exp
         | Call      Exp Exp
         | Seq       Exp Exp
         | Mutable   Exp         -- new
         | Access    Exp         -- new
         | Assign    Exp Exp   -- new
  deriving (Eq, Show)
  
type Env = [(String, Value)]
  
-- same as in IntBool.hs
data BinaryOp = Add | Sub | Mul | Div | And | Or
              | GT | LT | LE | GE | EQ
  deriving (Eq, Show)

data UnaryOp = Neg | Not
  deriving (Eq, Show)

unary Not (BoolV b) = BoolV (not b)
unary Neg (IntV i)  = IntV (-i)

binary Add (IntV a)  (IntV b)  = IntV (a + b)
binary Sub (IntV a)  (IntV b)  = IntV (a - b)
binary Mul (IntV a)  (IntV b)  = IntV (a * b)
binary Div (IntV a)  (IntV b)  = IntV (a `div` b)
binary And (BoolV a) (BoolV b) = BoolV (a && b)
binary Or  (BoolV a) (BoolV b) = BoolV (a || b)
binary LT  (IntV a)  (IntV b)  = BoolV (a < b)
binary LE  (IntV a)  (IntV b)  = BoolV (a <= b)
binary GE  (IntV a)  (IntV b)  = BoolV (a >= b)
binary GT  (IntV a)  (IntV b)  = BoolV (a > b)
binary EQ  a         b         = BoolV (a == b)
binary op  a         b         = error ("Invalid binary " ++ show op ++ " operation: " ++ show a ++ ", " ++ show b) 

