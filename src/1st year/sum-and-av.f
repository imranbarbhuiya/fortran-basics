!     sum and average of numbers
      program sum_and_average
      implicit none

      real mean, sum
      integer i, n
      real, dimension(100)::a

      print*, 'Type n'
      read*, n

      print*, "Type the numbers now"
      read*, (a(i), i=1,n)
      sum = 0

      do i = 1, n
        sum = sum + a(i)
      end do

      print 4, sum
4     format('sum =', f10.2)
      mean = sum/n

      print 5, mean
5     format('mean =', f10.2)
      read*,
      end
