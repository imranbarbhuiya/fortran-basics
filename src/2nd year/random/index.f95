! largest of a given list of number and find it's index

program largest_number
    implicit none

    real big, a(100)
    integer i, n, index

    print*, 'Enter the number of elements in the list'
    read*, n
    print*, 'Enter the list'
    read*, (a(i), i = 1, n)

    big = a(1)

    do i=2,n
        if(a(i) > big) then
             big = a(i)
             index = i
        end if
    end do

    print*, 'The largest number is', big
    print*, 'The index of the largest number is', index
    print*, 'The index is', FINDLOC(a, big)

end program largest_number