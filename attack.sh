sleep 60
tcpreplay --intf1=eth1 --multiplier=$1 --loop=$2 test.pcap & 
tcpreplay --intf1=eth1 --multiplier=$1 --loop=$2 test1.pcap & 
tcpreplay --intf1=eth1 --multiplier=$1 --loop=$2 test2.pcap & 
tcpreplay --intf1=eth1 --multiplier=$1 --loop=$2 test3.pcap & 
