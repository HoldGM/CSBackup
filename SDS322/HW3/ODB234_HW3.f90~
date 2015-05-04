! Otis Brower
! UT EID: ODB234
! Assignment 3
! Due Date: 4/7/2015

PROGRAM hw3
  implicit none
  
  type::vector
  	real*8::x,y,z
  end type
  type::particle
  	real*8::x,y,z
  end type
  
  integer::numTS = 50 ! number of timesteps
  integer::args
  character(80):: velocity = "velocity.dat"
  character(80):: particles = "particles.dat"
  character(80):: tempstr
  character(80):: filename = "results.dat"
  
  args = IARGC()
  
  print*, args
  if (args > 0) then
  	call getarg(1, tempstr)
  	read(tempstr(:), '(i4)') numTS
  end if
  
  if (args > 1) then
  	call getarg(2, filename)
  end if
  
  if (args > 2) then
  	call getarg(3, velocity)
  end if
  
  if (args > 3) then
  	call getarg (4, particles)
  end if
  
   print *, tempstr
   print *, numTS
   print *, filename
   print *, velocity
   print *, particles
   
   
   
END PROGRAM hw3

