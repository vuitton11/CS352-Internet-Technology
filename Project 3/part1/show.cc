#include <click/config.h>
#include <click/error.hh>
#include <click/confparse.hh>
#include "show.hh"

CLICK_DECLS
ShowPacket::ShowPacket(){}
ShowPacket::~ShowPacket(){}

int ShowPacket::configure(Vector<String> &conf, ErrorHandler *errh){
return 0;
} // show errors error message 
void ShowPacket::push(int,Packet *p){  // make a new showpacket 
click_chatter("getting a packet"); // propts meesage 
click_chatter("packet size %d", p->length()); // size is the p length 
selfDefinedPacketHead *head = (selfDefinedPacketHead*) p->data(); // creats a new head  and name it 
click_chatter("packet type %d", head->type); // prompts message 
selfDefinedPacketPayload *payLoad = (selfDefinedPacketPayload*)(head+1); // adds one to head to get the payload 
click_chatter("getting packet conent %s", payLoad -> payLoad); // see the content size using the payload 

return;
}
CLICK_ENDDECLS
EXPORT_ELEMENT(ShowPacket)
