# plot.plt
# set term x11 font "-*-helvetica-medium-r-*-*-14-*-*-*-*-*-*-*"
set title "I vs V Graph"
set nokey
set grid
set xlabel "I"
set ylabel "V"
m="data.txt"
plot m using 1:2 with linespoints
