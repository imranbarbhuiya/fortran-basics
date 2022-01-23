!     expx series upto nterms
      program expx
      implicit none
      real x, sum, term
      integer i, n

      print *, "Find the value of e^x"
      print*, "Give the value of x"
      read*, x
      print*, "Give n <number of terms in series>"
      read*, n

      sum = 1 ; term = 1

      do i=1, (n-1)
            term = (term * x) / i
            sum = sum + term
      end do

      print 1, x, sum
1     format(1x,"exp^",f 5.2,"="f 10.5)

      print 1, x, exp(x)

      read*,

      end program expx