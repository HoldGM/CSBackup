
!USE A MODULE
subroutine passanarray(array)

	real*8::array(i:i:i)
	array = 0.0
	

end subroutine

subroutine inverseElements(array)

	real*8::array(i:i:i)
	
	where (array > 0.0) array = 1.0/array !inverse of array

end subroutine

subroutine squareroot(array)

	real*8::array(i:i:i)
	
	!elemental funcation
	sqrt(array) !takes square root of every element in array

end subroutines

PROGRAM dynarr
	implicit none
	
	real*8, allocateable::myarray(:, :, :)
	
	allocare(myarray(0:9, 0:9, 0:9)) !indexed from 0 to 10
	
	myarray(0,0,1) = 0.0
	
	deallocate(myarray)

	
END PROGRAM dynarr



program arguments
	implicit none
	
	integer::num_arguments
	character(30)::buffer
	
	num_arguments = NARGS()

	if(num_arguments > 1)
		GETARG(1, buffer)
	end if
	
end program
