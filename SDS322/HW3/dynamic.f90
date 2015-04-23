
!USE A MODULE
subroutine passanarray(array)
  real*8::array(:,:,:)  

  array = 0.0

end subroutine

subroutine inverseElements(array)
  real*8::array(:,:,:)

  !Array masking
  where (array>0.0) array=1.0/array
  
end subroutine

subroutine taketheroot(array)
  real*8::array(:,:,:)

  !Elemental function
  sqrt(array)

end subroutine


program dynamicArrays
  implicit none

  !Declare and allocatable array
  real*8,allocatable::myarray(:,:,:)

  !Allocate the array
  allocate(myarray(0:9,0:9,0:9))

  !Access your allocated array
  myarray(0,0,1) = 0.0

  !Pass an array to a subroutine
  call passanarray(myarray)

  !Deallocate an allocatable array
  deallocate(myarray)

end program
