program newton
implicit none
real g, p, ysin, h
integer i,n
real, dimension(20):: x, y

print*, "let x=g, type g, n"
read*, g, n

do 10 i=1,n
      print*, "x(i), y(i)"
      read*, x(i), y(i)
10 continue

x(i) = x(3)
x(i+1) = x(4)

y(i) = y(3)
y(i+1) = y(4)

h = x(i+1) - x(i)
p = (g-x(i))/h

ysin = (1-p)*y(i) + p*y(i+1)

print*, "x(i) = ", x(i), "x(i+1)", x(i+1), "sin(x) = ", ysin
read*,
end program newton