require(library /home/comnetsii/elements/routerport.click);

Idle -> RatedSource(DATA "hello", RATE 1, LIMIT 10)
	->SimpleAgnosticElement(MAXPACKETSIZE 100)
	->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac)
	->Discard;

//creates packet and sends to veth2 using simpleAgnostic