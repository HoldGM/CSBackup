import Base
import Prelude hiding (LT, GT, EQ)
import CheckedStateful
import CheckedStatefulParse
import Stateful hiding (evaluate, execute)

p1 = parseExp ("var T = function(a) { function(b) { a } };"++
               "var F = function(a) { function(b) { b } };"++
               "var not = function(b) { b(F)(T) };"++
               "not(F)")
               
p2 = parseExp (
      "var x = 5;"++
      "var f = function(y) { x - y };"++
      "var x = f(9);"++
      "f(x)")

p3 = parseExp (
      "var x = 5;"++
      "var f = function(y) { var y = x * y; function(x) { x + y } };"++
      "var g = f(2);"++
      "g(5)")

p4 = parseExp (
      "var comp = function(f) { function(g) { function(x) { f(g(x)) }}};"++
      "var inc = function(x) { x + 1 };"++
      "var square = function(x) { x * x };"++
      "var f = comp(inc)(square);"++
      "f(5)")

p5 = parseExp (
      "var map = function(f) { function(x) { function(y) { f(x) + f(y) }}};"++
      "var g = function(x) { x + 1 };"++
      "map(g)(3)(4)")

p6 = parseExp "var i = mutable 5; i = @i + 3; @i"

p7 = parseExp "var a = mutable (mutable 3); a = a; @@@@@a"

e0 = parseExp "1; 2; x; 7"
e1 = parseExp "@3"
e2 = parseExp "if (3) { a } else { b }"
e3 = parseExp "3 + true"
e4 = parseExp "-false"
e5 = parseExp "!3"
e6 = parseExp "3 = 4"
e7 = parseExp "if (3+4) { a } else { b }"
e8 = parseExp "if (3==3) { 3(6) } else { b }"
e9 = Access (Literal (AddressV 10))
e10 = Assign (Literal (AddressV 10)) (Literal (IntV 23))

main = do
    test "execute" execute p1
    test "execute" execute p2
    test "execute" execute p3
    test "execute" execute p4
    test "execute" execute p5
    test "execute" execute p6
    test "execute" execute p7

    test "execute" execute e0
    test "execute" execute e1
    test "execute" execute e2
    test "execute" execute e3
    test "execute" execute e4
    test "execute" execute e5
    test "execute" execute e6
    test "execute" execute e7
    test "execute" execute e8
    test "execute" execute e9
    test "execute" execute e10
    
