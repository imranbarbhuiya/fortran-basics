!       TO CALCULATE HA
!        IMPLICIT REAL*8(A-Z)
!        INTEGER*4 A,B,D,E
!        REAL LST,RA,C,F,G,H,P,Q,HA
!        OPEN(1,FILE='input1.dat',STATUS='OLD')
!        OPEN(2,FILE='output.dat',STATUS='new')
!        WRITE(*,*)'GIVE A,B,C OF RA,D,E,F OF LST'
!10     READ(1,*,END=20)A,B,C,D,E,F
c     To read a data file and print output file
       implicit none
c       real(kind=2)a,b,s
c       real*8 a,b,s
        real a,b,s
c      OPEN(1,FILE='input1.dat',STATUS='OLD',action='read')
c      OPEN(2,FILE='outputnew.dat',STATUS='old')
      OPEN(1,FILE='input1.dat',STATUS='OLD')
      OPEN(2,FILE='output1.dat',STATUS='old')
10    READ(1,*,END=20)a,b
        s=a+b
c       HA=15*(LST-RA)
c     WRITE(2,*)'sum IS',s
      write(2,5)s
5     format('sum=',f10.2)
        GO TO 10
20      CONTINUE
        read*,
        END


