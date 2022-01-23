!To find max, min and range of a given set of no',
program max_min
implicit none
real min, max, range
integer i, n
real, dimension(100)::a

print*, "Type n"
read*, n

print*, "Type the numbers now"
read*, (a(i), i=1, n)

max = a(1)
min = a(1)

do 10 i = 2, n
      if(a(i)>max) max = a(i)
      if(a(i)<min) min = a(i)
10    continue

print*, "Maximum = ", max
print*, "Minimum = ", min

range = max - min
print*, "Range = ", range

read* ,
end program max_min