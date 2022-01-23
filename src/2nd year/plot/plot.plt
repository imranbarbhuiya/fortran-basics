# plot.plt
# set term x11 font "-*-helvetica-medium-r-*-*-14-*-*-*-*-*-*-*"
set title "I vs V and I Vfit Graph"
set nokey
set grid
set xlabel "I"
set ylabel "Vfit, V"
plot "data.dat" using 1:2 with linespoints ls 1 linecolor rgb "blue" title "I vs Vfits", \
     "data.dat" using 1:3 with linespoints ls 1 linecolor rgb "red" title "I vs V"