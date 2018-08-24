
#ifndef CLICK_changeContent_HH
#define CLICK_changeContent_HH
#include <click/element.hh>
CLICK_DECLS


class changeContent : public Element { public:

    changeContent() CLICK_COLD;

    const char *class_name() const		{ return "changeContent"; }
    const char *port_count() const		{ return PORTS_1_1; }
    const char *processing() const 		{ return PUSH; }
    int configure(Vector<String> &, ErrorHandler *) CLICK_COLD;

    Packet *simple_action(Packet *);

  private:

    unsigned _offset;
    String _data;

};

CLICK_ENDDECLS
#endif
