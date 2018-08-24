require(library /home/comnetsii/elements/routerport.click);
Idle
->SimpleAgnosticElement(MAXPACKETSIZE 100) //uses imple agnositc element 
->RouterPort(DEV $dev, IN_MAC $in_mac, OUT_MAC $out_mac) // router port element 
->Discard; / discard packet 
