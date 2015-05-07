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
	
	if(args > 0) then
		call getarg(1, in)
	end if
	
	if(args > 1) then 
		call getarg(2, filename)
		read(filename, '(I4)')freq
	end if
	
	if(args > 2) then
		call getarg(3, out)
	end if
	
	write(filename, '("../", A)') in
	
	open(10, file = filename)
	
	read(10, *) xDim, yDim, alpha, numTS
	
	allocate(tempMap(0:(xDim-1), 0:(yDim-1)))
	xDim = xDim - 1
	yDim = yDim - 1
	
	!do while (!EOF(10))
		read(10, *) posX, posY, temp, hold
		
		call wildX(tempMap, posY, xDim, yDim, temp, hold)
	
	
	
END PROGRAM main

SUBROUTINE wildX(tempMap, posY, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, posY, hold
	real*8 :: temp
	type(heat) :: tempMap(0:xDim, 0:yDim)
	
	
	
	return
END SUBROUTINE