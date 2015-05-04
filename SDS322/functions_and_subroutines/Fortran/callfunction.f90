program callFunction
  use myModule
  implicit none

  character(10)::name
  real*8::x,y


  x=4.5

  name="Bob"

  !print *, "Hello, World!"

  call hello
  call whoisthis(name)

  y=pow2(x)

  print *, "The square of ",x," is: ", y
  print *, "Another pow2 ", anotherpow2(x)
  print *, "Yet another pow2 ", yetanotherpow2(x)


end program
