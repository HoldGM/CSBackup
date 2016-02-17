"""CS105: Python: Assignment 1

Get yourself started with a development environment and write some
code and look at the Python documentation.

For 90%:
* Fill in the fac function with an implementation of the factorial
  funcion.
* And the fib function with an implementation of fibonacci.

For 100%:
* Implement fac on one line using one standard library function and
  the product function below. You should look up functools.reduce in
  the documentation and be able to tell how what it does.

None of your code should print any output. You will lose points if it
does. If you want to have some debugging prints you do not have to
remove look up and use the logging package in the standard library.

See:
https://docs.python.org/3/library/functions.html

Feel free to use any code you find in the Python documention. However
you should cite the source of the code in a comment.

"""

import functools

def product(l):
    def times(x, y):
        return x * y
    return functools.reduce(times, l)

def fib(n):
    if n <= 1:
    	return n
    else:
    	return fib(n-1) + fib(n-2)

def fac(n):
    if n < 1:
    	return 1
    else:
    	return n * fac(n-1)

