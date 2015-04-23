PROGRAM Funcs
	implicit none
	
	character (80)::things
	
	things = "this is the thing"
	
	print *, things
	
	CALL CHANGESTR(things)
	
	print *, things
	
END PROGRAM

SUBROUTINE CHANGESTR (str)
	character(80) str
	str = "the thing changed"
	
	return
END

