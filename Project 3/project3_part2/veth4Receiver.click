require(Library	/home/comnetsii/elements/routerport.click);

Idle ->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac)
	->ShowPacket
	->Discard;

//veth4
//receivers packet from veth3 and prints changed packet content