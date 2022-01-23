program newton
implicit none
real g, p, ysin, h, j, k, l, m
integer i,n
real, dimension(20):: x, y

print*, "type x, n"
read*, g, n

do 10 i=1,n
      print*, "x(i), y(i)"
      read*, x(i), y(i)

      if ( x(i)<g ) go to 10
      print*, x(i)
      j=x(i)
      k=y(i)
      l=x(i-1)
      m=y(i-1)
      h=j-l
      p=(g-l)/h 
      ysin = (1-p)*m+p*k
      print*, 'x(i)=', l, ' x(i+1)=',j,'sin(x)=',ysin
      read*,
      ! call execute_command_line('pause')
      stop
10 continue

read*,
end program newton