SUBROUTINE heatEq(tempMap, alpha, xDim, yDim)
	implicit none	

	type::heat
		real*8::t
		integer::b
	end type
	
	type(heat) :: tempMap(0:xDim, 0:yDim)
	type(heat) :: newMap(0:xDim, 0:yDim)
		integer :: i, j, xDim, yDim
		real*8 :: alpha
		
		do j = 0, yDim
			do i = 0, xDim
				newMap(i,j)%t = tempMap(i,j)%t
				newMap(i,j)%b = tempMap(i,j)%b
			end do
		end do
		
				!Top left corner
		if(tempMap(0,0)%b == 0) then
			tempMap(0,0)%t = newMap(0,0)%t + alpha * (newMap(1,0)%t + newMap(1,1)%t + newMap(0,1)%t - 3 * newMap(0,0)%t)
		end if
		!Lower right corner
		if(tempMap(xDim,yDim)%b == 0) then
			tempMap(xDim,yDim)%t  = newMap(xDim,yDim)%t + alpha * (newMap(xDim,yDim-1)%t + newMap(xDim-1,yDim-1)%t + &
				newMap(xDim-1,yDim)%t - 3 * newMap(xDim,yDim)%t)
		end if
		!Lower left Corner
		if(tempMap(0, yDim)%b == 0) then
			tempMap(0, yDim)%t = newMap(0, yDim)%t + alpha * (newMap(0,yDim-1)%t + newMap(1,yDim-1)%t + newMap(1, yDim)%t - &
				3 * newMap(0, yDim)%t)
		end if
		!Upper right corner
		if(tempMap(xDim, 0)%b == 0) then
			tempMap(xDim, 0)%t = newMap(xDim, 0)%t + alpha * (newMap(xDim-1, 0)%t + newMap(xDim-1, 1)%t + newMap(xDim, 1)%t - 3 * &
				newMap(xDim, 0)%t)
		endif
		!Top edge & Bottom edge
		do i = 1, xDim - 1
			if(tempMap(i, 0)%b == 0) then
				tempMap(i, 0)%t = newMap(i, 0)%t + alpha * (newMap(i-1, 0)%t + newMap(i-1, 1)%t + newMap(i, 1)%t + newMap(i+1, 1)%t + &
					newMap(i+1, 0)%t - 5 * newMap(i, 0)%t)
			end if
			if(tempMap(i, yDim)%b == 0) then
				tempMap(i, yDim)%t = newMap(i, yDim)%t + alpha * (newMap(i-1, yDim)%t + newMap(i-1, yDim-1)%t + newMap(i, yDim-1)%t + &
					newMap(i +1, yDim-1)%t + newMap(i+1, yDim)%t - 5 * newMap(i, yDim)%t)
			end if
		end do

		!Left edge & right edge
		do j = 1, yDim-1
			if(tempMap(0, j)%b == 0) then
				tempMap(0, j)%t = newMap(0, j)%t + alpha * (newMap(0, j-1)%t + newMap(1, j-1)%t + newMap(1, j)%t + newMap(1, j+1)%t + &
					newMap(0, j+1)%t - 5 * newMap(0, j)%t)
			end if
			if(tempMap(xDim, j)%b == 0)then 
				tempMap(xDim, j)%t = newMap(xDim, j)%t + alpha * (newMap(xDim, j-1)%t + newMap(xDim-1, j-1)%t + newMap(xDim-1, j)%t + &
					newMap(xDim-1, j+1)%t + newMap(xDim, j+1)%t - 5 * newMap(xDim, j)%t)
			end if
		end do

		do j = 1, yDim-1
			do i = 1, xDim-1
				if(tempMap(i, j)%b == 0) then
					tempMap(i, j)%t = newMap(i, j)%t + alpha*(newMap(i-1, j-1)%t + newMap(i, j-1)%t + newMap(i+1, j-1)%t + newMap(i-1, j)%t &
						+ newMap(i+1, j)%t + newMap(i-1, j+1)%t + newMap(i, j+1)%t + newMap(i+1, j+1)%t - 8 * newMap(i, j)%t)
				endif
			end do
		end do
		
		return
END SUBROUTINE


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
	character(4) :: tX, tY
	character(80) :: filename
	integer::xDim, yDim, numTS, hold
	real*8 :: alpha, temp
	
	type(heat), allocatable :: tempMap(:,:)
	
	args = IARGC()
	
	if(args > 0) then
		call getarg(1, in)
	end if
	
	if(args > 1) then 
		call getarg(2, filename)
		read(filename(:), '(I4)')freq
	end if
	
	if(args > 2) then
		call getarg(3, out)
		out = TRIM(out)
	end if
	print *, out, "this"
	
	write(filename, '("../", A)') in
	print *, filename
	open(unit = 10, file = filename)
	
	read(10,*, IOSTAT=eof) xDim, yDim, alpha, numTS
	print *, xDim, yDim, alpha, numTS
	
	allocate(tempMap(0:(xDim-1), 0:(yDim-1)))
	xDim = xDim - 1
	yDim = yDim - 1
	
	do while ( eof == 0)
		read(10, *, IOSTAT = eof) tX, tY, temp, hold
		print *, eof
		print *, tX, tY, temp, hold
		
		if (tX .eq. '*') then
			print *, "it checks X"
			posX = -1
		else
			read(tX, '(i4)') posX
		end if
		
		if (tY .eq. '*') then
			print *, "it checks y"
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
			else if (posX < 0 .and. posY < 0) then
				print *, "Does it get here?"
				do j = 0, yDim
					do i = 0, xDim
						tempMap(i, j)%t = temp
						tempMap(i, j)%b = hold
					end do
				end do
			else
				tempMap(posX,posY)%t = temp
				tempMap(posX,posY)%b = hold
			end if
		if(eof < 0) then 
			EXIT
		end if
	end do
	
	close(10)
	
	write (filename, '(A, "_0000.dat")') TRIM(out)
	open (10, file=filename)
	do j = 0, yDim
		do i = 0, xDim
			write (10, *) i, j, tempMap(i, j)%t, tempMap(i, j)%b
		end do
	end do
	
	close(10)
	
	do k = 1, numTS	
		call heatEq(tempMap, alpha, xDim, yDim)
		if(mod(k, freq) == 0) then
			write (filename, '(A, "_", I4.4, ".dat")') TRIM(out), k
			open (10, file = filename)
			do j = 0, yDim
				do i = 0, xDim
					write (10, '(I4, I4, F9.4, I4)') i, j, tempMap(i, j)%t, tempMap(i, j)%b
				end do
			end do
		end if
		
	end do


	deallocate(tempMap)
END PROGRAM main
