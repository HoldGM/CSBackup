SUBROUTINE wildX(tempMap, posY, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, posY, hold
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim) :: tempMap
	
	
	
	return
END SUBROUTINE

SUBROUTINE wildY(tempMap, posX, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, posX, hold
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim) :: tempMap
	
	return
END SUBROUTINE

SUBROUTINE wildXY(tempMap, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, hold
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim) :: tempMap
	
	return
END SUBROUTINE

PROGRAM main
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: i, j, k, eof
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
	
	read(10, *, IOSTAT = eof) xDim, yDim, alpha, numTS
	
	allocate(tempMap(0:(xDim-1), 0:(yDim-1)))
	xDim = xDim - 1
	yDim = yDim - 1
	
	
	do while (eof > 0)
		read(10, *, IOSTAT = eof) posX, posY, temp, hold
		if(posX == ichar('*') .AND. posY /= ichar('*')) then
			call wildX(tempMap, posY, xDim, yDim, temp, hold)
		else if ( posY == ichar('*') .AND. posX /= ichar('*'))then
			call wildY(tempMap, posX, xDim, yDim, temp, hold)
		else if (posX == ichar('*') .AND. posY == ichar('*')) then
			call wildXY(tempMap, xDim, yDim, temp, hold)
		else
			tempMap(posX,posY)%t = temp
			tempMap(posX,posY)%b = hold
		end if
	end do
	
	close(10)
	
	do j = 0, yDim
		do i = 0, xDim
			print *, i, j, tempMap(i, j)%t
		end do
	end do
	
	deallocate(tempMap)
END PROGRAM main
