SUBROUTINE heatEq(tempMap, alpha, xDim, yDim)
	type(heat) :: newMap(0:xDim, 0:yDim)
		integer :: i, j
		
		do j = 0, yDim
			do i = 0, xDim
				newMap(i,j)%t = tempMap(i,j)%t
				newMap(i,j)%b = tempMap(i,j)%b
			end do
		end do
		
		!Top left corner
		if(tempMap(0,0)&b /= 1){
			tempMap(0,0)%t = newMap(0,0)%t + alpha * (newMap(1,0)%t + newMap(1,1)%t + newMap(0,1)%t - 3 * newMap(0,0)%t)
		}
		!Lower right corner
		if(tempMap(xDim-1,yDim-1)%b /= 0){
			tempMap(xDim-1,yDim -1)%t  = newMap(xDim-1,yDim-1)%t + alpha * (newMap(xDim-2,yDim-1)%t + newMap(xDim-2,yDim-2)%t + 
				newMap(xDim-1,yDim-2)%t - 3 * newMap(xDim-1,yDim-1)%t)
		}
		!Lower left Corner
		if(tempMap(0, yDim-1)%b /= 0){
			tempMap(0, yDim-1)%t = newMap(0, yDim-1)%t + alpha * (newMap(0,yDim-2)%t + newMap(1,yDim-2)%t + newMap(1, yDim-1)%t - 
				3 * newMap(0, yDim-1)%t)
		}
		!Upper right corner
		if(tempMap(xDim-1, 0)%b == 0){
			tempMap(xDim-1, 0)%t = newMap(xDim-1, 0)%t + alpha * (newMap(xDim-2, 0)%t + newMap(xDim-2, 1)%t + newMap(xDim-1, 1)%t - 3 * 
				newMap(xDim-1, 0)%t)
		}
		!Top edge & Bottom edge
		for(i = 1; i < xDim - 1; i++){
			if(tempMap(i, 0)%b == 0){
				tempMap(i, 0)%t = newMap(i, 0)%t + alpha * (newMap(i-1, 0)%t + newMap(i-1, 1)%t + newMap(i, 1)%t + newMap(i+1, 1)%t + 
					newMap(i+1, 0)%t - 5 * newMap(i, 0)%t)
			}
			if(tempMap(i, yDim-1)%b == 0){
				tempMap(i, yDim-1)%t = newMap(i, yDim-1)%t + alpha * (newMap(i-1, yDim-1)%t + newMap(i-1, yDim-2)%t + newMap(i, yDim-2)%t + 
					newMap(i +1, yDim-2)%t + newMap(i+1, yDim-1)%t - 5 * newMap(i, yDim-1)%t)
			}
		}

		!Left edge & right edge
		for(j = 1; j < yDim-1; j++){
			if(tempMap(0, j)%b == 0){
				tempMap(0, j)%t = newMap(0, j)%t + alpha * (newMap(0, j-1)%t + newMap(1, j-1)%t + newMap(1, j)%t + newMap(1, j+1)%t + 
					newMap(0, j+1)%t - 5 * newMap(0, j)%t)
			}
			if(tempMap(xDim-1, j)%b == 0){
				tempMap(xDim-1, j)%t = newMap(xDim-1, j)%t + alpha * (newMap(xDim-1, j-1)%t + newMap(xDim-2, j-1)%t + newMap(xDim-2, j)%t + 
					newMap(xDim-2, j+1)%t + newMap(xDim-1, j+1)%t - 5 * newMap(xDim-1, j)%t)
			}
		}

		for(j = 1; j < yDim-1; j++){
			for(i = 1; i < xDim-1; i++){
				if(tempMap(i, j)%b == 0){
					tempMap(i. j)%t = newMap(i, j)%t + alpha*(newMap(i-1, j-1)%t + newMap(i, i-1)%t + newMap(i+1, j-1)%t + newMap(i-1, j)%t 
						+ newMap(i+1, j)%t + newMap(i-1, j+1)%t + newMap(i, j+1)%t + newMap(i+1, j+1)%t - 8 * newMap(i, j)%t)
				}
			}
		}
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
	character :: tX, tY
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
	
	do j = 0, yDim
		do i = 0, xDim
			print *,  i, j, tempMap(i, j)%t, tempMap(i,j)%b
		end do
	end do
	
	deallocate(tempMap)
END PROGRAM main
