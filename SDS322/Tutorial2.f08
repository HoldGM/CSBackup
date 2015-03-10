PROGRAM Favorite_Number
IMPLICIT NONE

real :: favorite = 42


write (*,*) "Enter your favorite number: "
read (*,*) favorite
write (*,*) "Sweet, your favorite number is ", favorite

favorite = favorite + 1

write (*,*) favorite

favorite = favorite * 4
write (*,*) favorite

favorite = favorite / 3


END PROGRAM 