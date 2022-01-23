!     cosx series upto nterms
      program cosx
      implicit none
      real x, sum, term, angle
      integer i, n

      print *, "Find the value of cos(x)"
      print*, "Give the values of angle <in degree>"
      read*, angle
      print*, "Give n <number of terms in series>"
      read*, n
      print*, "Calculating cos of ", angle

      x = 0.0174532925*angle
      print*, "angle in radiun = ", x

      sum = 1 ; term = 1

      do i=1, (n-1)
            term = -term * x * x / ((2*i-1) * 2*i)
            sum = sum + term
      end do

      print 1, angle, sum
1     format(1x,"cos(",f 5.2,")="f 10.5)

      print 1, angle, cos(x)

      read*,

      end program cosx