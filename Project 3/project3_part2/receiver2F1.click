require(library /home/comnetsii/elements/routerport.click);

Idle->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac)
	->changeContent(0, "goodbye") 
	->SimpleAgnosticElement(MAXPACKETSIZE 100) //pushes back to veth3
	->Discard;

//receives from veth1, changes content of packet then pushes back into veth3