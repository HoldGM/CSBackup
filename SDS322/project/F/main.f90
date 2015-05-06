PROGRAM main
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: i, j, k
	integer :: freq
	integer :: args
	character(20) :: out
	character(20) :: in
	character(100)::buf
	
	character(80) :: filename
	integer::xDim, yDim, numTS
	real*8 :: alpha, temp
	integer :: posX, posY, hold
	
	type(heat), allocatable :: tempMap(:,:)
	
	args = IARGC()
	
	if(args > 0)
		call getarg(1, in)
	end if
	
	if(args > 1)
		call getarg(2, numTS)
	end if
	
	if(args > 2)
		call getarg(3, out)
	end if
	
	write(filename, '("../", A)') in
	
	print *, filename
	
	deallocate(tempMap)
END PROGRAM main