require(Library	/home/comnetsii/elements/routerport.click); // getting library from routerport.click
Idle
->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac) //sets up router port like in project slides 
->ShowPacket // shows packets 
->Discard;  // discard packet 
