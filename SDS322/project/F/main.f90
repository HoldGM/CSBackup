PROGRAM main
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: i, j, k
	integer :: eof = 100
	integer :: freq
	integer :: args
	character(20) :: out
	character(20) :: in
	character(100)::buf
	integer :: posX, posY
	character :: tX, tY
	character(80) :: filename
	integer::xDim, yDim, numTS
	real*8 :: alpha, temp
	integer :: hold, posXint, posYint
	
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
	print *, filename
	open(unit = 10, file = filename)
	
	read(10,*, IOSTAT=eof) xDim, yDim, alpha, numTS
	print *, xDim, yDim, alpha, numTS
	
	allocate(tempMap(0:(xDim-1), 0:(yDim-1)))
	xDim = xDim - 1
	yDim = yDim - 1
	
	read(10, *, IOSTAT = eof) tX, tY, temp, hold
	do while ( eof >= 0)
		print *, eof
		print *, tX, temp, hold
		
		if (tX .eq. '*') then
			posX = -1
		else
			read(tX, '(i4)') posX
		end if
		
		if (tY .eq. '*') then
			posY = -1
		else
			read(tY, '(i4)') posY
		end if
	
		print *, posX, posY
			if(posX< 0 .and. posY >= 0) then
				do i = 0, xDim
					tempMap(i, posY)%t = temp
					tempMap(i, posY)%b = hold
				end do
			else if ( posY < 0 .and. posX >= 0)then
				do i = 0, yDim
					tempMap(posX, i)%t = temp
					tempMap(posX, i)%b = hold
				end do
			else if (posX < 0 .and. posYint < 0) then
				do j = 0, yDim
					do i = 0, xDim
						tempMap(i, j)%t = temp
						tempMap(i, j)%b = hold
					end do
				end do
			else
				tempMap(posXint,posYint)%t = temp
				tempMap(posXint,posYint)%b = hold
			end if
			
		read(10, *, IOSTAT = eof) posX, posY, temp, hold
		if(eof < 0) then 
			EXIT
		end if
	end do
	
	close(10)
	
	do j = 0, yDim
		do i = 0, xDim
			write (*, *) i, j, tempMap(i, j)%t, numTS
		end do
	end do
	
	deallocate(tempMap)
END PROGRAM main
