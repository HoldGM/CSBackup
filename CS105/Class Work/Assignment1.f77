PROGRAM Assignment1
IMPLICIT NONE

real :: a = 0
real :: b = 0

write (*,*) "Enter the length of 2 legs of a triangle: "
read (*,*) a
read (*,*) b

real :: c
c = ((a**2)+(b**2))**(1/2)
write (*,*) c


END PROGRAM