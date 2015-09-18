"""A few very basic tests for CS105 Python Assignment 1.

Run this script using:
python3 assignment1_test.py
It should work if you are in the same directory as your assignment1.py file.
"""

# DO NOT CHANGE THIS FILE. Grading will be done with an official
# version, so make sure your code work with this exact version.

import unittest

import assignment1

class Assignment1Tests(unittest.TestCase):
    def testFib2(self):
        self.assertEqual(assignment1.fib(2), 1)

    def testFac3(self):
        self.assertEqual(assignment1.fac(4), 24)

if __name__ == "__main__":
    unittest.main()
