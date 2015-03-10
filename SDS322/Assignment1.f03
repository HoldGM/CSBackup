PROGRAM Assignment1
IMPLICIT NONE

real*4 :: a, b, c, m1, m2, r
real*4, PARAMETER :: g = 6.674E-11
real*4 :: u1, u2, u3, alpha


!Pythagorean Theorem
write (*,*) "Enter the length of 2 legs of a triangle: "
read (*,*) a
read (*,*) b

write (*,*) (a**2 + b**2) ** 0.5

!Quadratic Formula
write (*,*) "Enter the coefficients of a second degree polynomial: "
read (*,*) a
read (*,*) b
read (*,*) c

if ( (b**2 - (4 * a * c)) < 0) then
	write (*,*) "This polynomial has 2 imaginary roots"
else if ( (b**2 - (4 * a * c)) >= 0) then
	write (*,*) (-b + SQRT(b**2 - (4 * a * c))) / (2 * a)
	write (*,*) (-b - SQRT(b**2 - (4 * a * c))) / (2 * a)
end if


!Newtons Law of Gravitation
write (*,*) "Enter the Mass of object 1"
read (*,*) m1
write (*,*) "Enter the Mass of object 2"
read (*,*) m2
write (*,*) "Enter distance between the objects"
read (*,*) r

write (*,*) ((g * m1 * m2) / (r ** 2))

!Heat Equation in 1-D Space
11428 birchover ln, austin, 78754




END PROGRAM Assignment1