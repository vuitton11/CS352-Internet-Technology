require(library /home/comnetsii/elements/routerport.click);

Idle ->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac)
	->SimpleAgnosticElement(MAXPACKETSIZE 100)
	->Discard;


//veth 3 receiver
//receives packet from veth2 and forwards to veth4