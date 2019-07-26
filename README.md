internetHostCount
=================

This is a collected count of hosts on the internet, from 
http://ftp.isc.org/www/survey/reports/current/ and 
https://web.archive.org/web/20010330090639/http://www.isc.org/ds/host-count-history.html, 
and the ITU stats about who's connected and how well from http://www.itu.int/en/ITU-D/Statistics/Pages/stat/default.aspx

Contributions are welcome, to fill in details about the early internet and to keep the data current.  It might also be appropriate to include other related datasets.

Updating
========
1. `updateCounts` will download the latest counts of internet hosts.  
2. You'll have to dig around the ITU site to find the latest stats for country breakdowns.
3. To generate the graphs from the supplied data, ensure that gnuplot is installed and on the path, then run "make all".  It will create a "target" directory with svg and png versions.
4. Contribute the log svg here: https://commons.wikimedia.org/wiki/File:Internet_Hosts_Count_log.svg
5. Contribute the per100 image here: https://commons.wikimedia.org/wiki/File:Internet_users_per_100_inhabitants_ITU.svg
