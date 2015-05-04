module myModule
  implicit none


  contains
    subroutine hello
      print *, "Hello, World!"
    end subroutine

    subroutine whoisthis(name)
      character(10)::name

      print *, "Hello, ", name
    end subroutine      

    real*8 function pow2(x)
      real*8,intent(in)::x
      pow2 = x*x
    end function

    function anotherpow2(x) result(y)
      real*8::x,y

      y = x*x
    end function

    function yetanotherpow2(x)
      real*8::x
      real*8::yetanotherpow2

      yetanotherpow2 = x*x
    end function

end module
