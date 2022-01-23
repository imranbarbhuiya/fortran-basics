# plot.plt
# set term x11 font "-*-helvetica-medium-r-*-*-14-*-*-*-*-*-*-*"
set title "I vs Vfit Graph"
set nokey
set grid
set xlabel "I"
set ylabel "Vfit"
plot "data.dat" using 1:2 with linespoints ls 1 linecolor rgb "blue", \
     "data.dat" using 1:3 with points ls 1 linecolor rgb "red"