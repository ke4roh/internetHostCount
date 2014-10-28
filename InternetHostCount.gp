# By Wikimedia Commons user Kopiersperre https://commons.wikimedia.org/wiki/User:Kopiersperre
# CC-BY-SA 3.0 Unported
# GNU Free Documentation License v. 1.2

set term svg size 800,600 font "DejaVu Sans,16"
set output 'target/InternetHostsCountLog.svg'
 
set xdata time
set timefmt "%Y-%m"
set format x "%Y"
set logscale y
# set yrange [100:1.5e+9]
 
set grid x y
set title 'Internet Hosts Count'
unset key
set xtics rotate
 
set datafile separator ","
plot 'InternetHostCount.csv' u 1:2 w lp pointtype 3 linewidth 1
