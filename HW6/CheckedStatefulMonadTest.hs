module CheckedStatefulMonadTest where

import Base
import CheckedStatefulMonad
import StatefulParse

test1 = execute (parseExp "10")
test2 = execute (parseExp "var y = 10; y")
test3 = execute (parseExp "var y = mutable 10; @y")
test4 = execute (parseExp "var y = mutable 10; y == @y + 10; @y")
test5 = execute (parseExp "100/10")
test6 = execute (parseExp "10/100")
test7 = execute (parseExp "10/0")
test8 = execute (parseExp "var y = mutable(mutable 0); var x = mutable 10; y = x; @@y")
test9 = execute (parseExp "var y = mutable(mutable 0); y = y; @@y")
test10 = execute (parseExp "var y = mutable 10; @@y")
test11 = execute (parseExp "var y = 3; @y")

main = do
	tagged "test1" (print test1)
	tagged "test2" (print test2)
	tagged "test3" (print test3)
	tagged "test4" (print test4)
	tagged "test5" (print test5)
	tagged "test6" (print test6)
	tagged "test7" (print test7)
	tagged "test8" (print test8)
	tagged "test9" (print test9)
	tagged "test10" (print test10)
	tagged "test11" (print test11)
