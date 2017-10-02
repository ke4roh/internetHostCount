# By Wikimedia Commons user Ke4roh https://en.wikipedia.org/wiki/User:Ke4roh
# CC-BY-SA 3.0 Unported
# GNU Free Documentation License v. 1.2

set term svg size 1267,691 font "DejaVu Sans,16"
set output 'target/InternetUsersPer100Inhabitants.svg'
 
set xdata time
set timefmt "%Y"
set format x "%Y"
set mxtics 2

set key top left
set key autotitle columnhead 
set grid x y
set title 'Internet Users Per 100 Inhabitants'
set xtics rotate

set terminal svg enhanced background rgb 'white'
 
set datafile separator ","
plot for [col=2:4] 'InternetUsersPer100Inhabitants.csv' using 1:col with lines, \
   for [cc=2:4] 'InternetUsersPer100Inhabitants.csv' using 1:cc:(sprintf("%.0f",column(cc))) with labels center offset 0,-.5 notitle
