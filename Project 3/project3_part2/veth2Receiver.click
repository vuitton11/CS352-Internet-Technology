require(library /home/comnetsii/elements/routerport.click);

Idle->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac)
	->changeContent(0, "changed packet content") 
	->ShowPacket
	->Discard;