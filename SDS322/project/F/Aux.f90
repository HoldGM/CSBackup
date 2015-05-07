SUBROUTINE wildX(tempMap, posY, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, posY, hold, i
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim) :: tempMap
	
	do i = 0, xDim
		tempMap(i, posY)%t = temp
		tempMap(i, posY)%b = hold
	end do
	
	return
END SUBROUTINE

SUBROUTINE wildY(tempMap, posX, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, posX, hold, i
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim) :: tempMap
	
	do i = 0, yDim
		tempMap(posX, i)%t = temp
		tempMap(posX, i)%b = hold
	end do
	
	return
END SUBROUTINE

SUBROUTINE wildXY(tempMap, xDim, yDim, temp, hold)
	implicit none
	
	type::heat
		real*8::t
		integer::b
	end type
	
	integer :: xDim, yDim, hold, i, j
	real*8 :: temp
	type(heat), dimension(0:xDim, 0:yDim), intent(inout):: tempMap
	
	do j = 0, yDim
		do i = 0, xDim
			tempMap(i,j)%t = temp
			tempMap(i,j)%b = hold
		end do
	end do
	
	return
END SUBROUTINE
