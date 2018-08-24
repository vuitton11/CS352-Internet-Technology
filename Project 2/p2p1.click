//p2p1.click

//Veton Abazovc
//Project 2 part 1:
//This configuration should generate packets and transmits them into the device
//reads the packets and prints them
//Ehternet and IP encapsulation is used to transmit this packet
//Run with sudo

RatedSource(DATA "Urgent Info!", RATE 1, LIMIT 1, STOP true) //Creates Packet
	->Print(CONTENTS 'ASCII') //Prints the Contents in ASCII value
	->IPEncap(4, 192.168.1.1, 192.168.1.2) //encapsulates packet in static IP heeader
	->Print("IPEncapsulation Complete") //Prints IP encapsulation
	->EtherEncap(0x0800, 86:f0:47:a4:53:0f, 46:eb:d7:1e:b9:36) //encapsulates packet in Ethernet header
	->Print("EtherEncap Complete... Pushing packet to veth2")  //Prints to make sure EtherEncap worked
	->ToDevice(veth1) //Sends packet to network device (veth1)

FromDevice(veth2) //Reads packet from network device
	->Print("Reading Packet")
	->Discard; //Drops the Packet
