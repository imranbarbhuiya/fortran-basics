program find_R
    implicit none
    real i(100), v(100), vfit(100), s1, s2, s3, s4, s5, R
    integer j, n, fu

    print*, "Give value of n:"
    read*, n
    print*, "Give values of I(j) and V(j):"
    do j = 1, n
        read*, i(j), v(j)
    end do

    s1 = 0.0
    s2 = 0.0
    s3 = 0.0
    s4 = 0.0
    s5 = 0.0

    do j = 1, n
        s1 = s1 + i(j)
        s2 = s2 + i(j)*i(j)
        s3 = s3 + i(j)*v(j)
        s4 = s4 + v(j)
    end do

    R = (n*s3 - s1*s4)/(n*s2 - s1*s1)

    print*, "Value of R is:", R

    open (newunit=fu, action='write', file="data.dat", status='replace')

    print*, "Value I(j), vfit(j) are:"

    do j = 1, n
        vfit(j) = R*i(j)
        print*, i(j), vfit(j)
        write (fu, *) i(j), vfit(j), v(j)
    end do

    close (fu)

    call execute_command_line('gnuplot -p plot.plt')

end program find_R