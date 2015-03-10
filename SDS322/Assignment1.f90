PROGRAM Assignment1
IMPLICIT NONE

real*4 :: a
real*4 :: b
real*4 :: c

write (*,*) "Enter the length of 2 legs of a triangle: "
read (*,*) a
read (*,*) b
c = sqrt((a**2 + b**2))
write (*,*) "The hypotenuse of the triangle is ", c


write (*,*) "Enter the coefficients of a second degree polynomial: "
read (*,*) a
read (*,*) b
read (*,*) c

if ( (b**2 - (4 * a * c)) < 0)
	write (*,*) "This polynomial has 2 imaginary roots"
if ( (b**2 - (4 * a * c)) .GT. -1)
	write (*,*) (-b + (b**2 +(4 * a * c))**0.5) / (2*a)




END PROGRAM
