!Read a file and write a file
program read_and_write_file
implicit none

integer :: a, b

open(1, file="input.dat", status="old", action="read")
open(2, file="output.dat", status="old", position="append")

6 read(1, *, end=10) a

b = 2*a
write(2, *) b
print *, "result is", b
go to 6
10 continue
close(1)
close(2)
read *,
end program read_and_write_file
