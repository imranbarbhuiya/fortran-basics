!to solve a quadratic equ
!implicit real*8 (A-Z)
program solution_of_quadretic_equation
implicit none
real a,b,c,x,disc,d,xreal1,xreal2,ximag1,ximag2
!write(*,*)'give a,b,c'
print*,'Type a,b,c'
read*,a,b,c
if(a==0)then
print*,'equation is linear'
x=-c/b
print*,'xreal=',x
stop
end if
disc=b*b-4.0*a*c
if(disc >= 0)then
print*,'roots are real'
d=SQRT(disc)
xreal1=(-b+d)/(2.0*a)
xreal2=(-b-d)/(2.0*a)
print*,'Roots are,''xreal1=',xreal1,'xreal2=',xreal2
else
print*,'roots are complex conjugate'
d=SQRT(abs(disc))
xreal1=-b/(2.0*a)
xreal2=xreal1
ximag1=d/(2.0*a)
ximag2=ximag1
!print*,'Roots are,',xreal1,'+i',ximag1
!print*,'          ',xreal2,'-i', ximag2
print 10,xreal1,ximag1
10 format(1x,'Roots are,',2x,f 5.2,1x,'+i',f 6.3)
print 20,xreal2,ximag2
20 format(13x,f 5.2,1x,'-i',f 6.3)
end if
read*,
end program solution_of_quadretic_equation
