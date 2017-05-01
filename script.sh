#!/bin/bash

for j in `seq 46 52`;
do
	for i in `seq 1 100`;
	do
z=$(bc <<< "scale=6; $i/1000000")

tcprewrite --fixcsum --srcipmap=0.0.0.0/0:99.0.$j.$i/32 --infile=slowloris.pcap --outfile=tcp$i$j


sudo editcap -t $z  tcp$i$j tcpchanged$i$j

x+=$(echo 'tcpchanged'$i$j' ' )

	done
done

mergecap $x -w test7.pcap

sudo rm tcp*
