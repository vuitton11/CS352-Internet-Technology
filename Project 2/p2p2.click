//p2p2.click

//Veton Abazovic
//Project 2 part 2:
//This configuration should echo back to the origin router
//Purpose is to experiment with muli-direcional communications
//Run with sudo

FromDevice(veth2)
	->Print("Packet secure!") //obtained packet
	->Strip(14) //Used to get rid of the Ethernet header
	->Print("Strip Ethernet header complete!")
	->Strip(20) //Used to get rid of IP header
	->Print(CONTENTS ASCII) //Prints data from the packet
	->Queue	//Preparing to send packet back to origin router
	->IPEncap(4, 192.168.1.2, 192.168.1.1)	//IP header
	->Print("IP encapsulation Complete")
	->EtherEncap(0x0800, 46:eb:d7:1e:b9:36, 86:f0:47:a4:53:0f) //Ethernet header
	->Print("EtherEncap Done... Transmiting packet back to origin router(veth2)")
	->ToDevice(veth2)	//Sends packet to network device
