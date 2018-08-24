//test69.click

//This  configuration should print this line once:
//  5: hello
// This single click instance generates a packet with Data "hello"
// and prints the content to the terminal.

InfiniteSource(DATA "hello", LIMIT 1, STOP true) // Creates packet with DATA
	-> Print(CONTENTS 'ASCII')  // Prints the Contents in ASCII value
	-> Discard;                 // Drops the Packet

