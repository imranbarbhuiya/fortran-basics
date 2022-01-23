!     sinx series upto nterms
      program sinx
      implicit none
      real x, sum, term, angle
      integer i, n

      print *, "Find the value of sin(x)"
      print*, "Give the values of angle <in degree>"
      read*, angle
      print*, "Give n <number of terms in series>"
      read*, n
      print*, "Calculating sine of ", angle

      x = 0.0174532925*angle  !or we can use x = angle*3.14/180
      print*, "angle in radiun = ", x

      sum = x ; term = x

      do i=1, (n-1)
            term = -term * x * x / (2*i * (2*i+1))
            sum = sum + term
      end do

      print 1, angle, sum
1     format(1x,"sin(",f 5.2,")="f 10.5)

      !print 1, angle, sin(x)

      read*,
      end program sinx