#include <xc.h>

#include "canlib.h"
#include "mcc_generated_files/system/system.h"

//
static void can_msg_handler(const can_msg_t *msg);

// memory pool for the CAN tx buffer
uint8_t tx_pool[200];

int main(void) {
	SYSTEM_Initialize();

	// Enable global interrupts
	INTCON0bits.GIE = 1;

	// Set up CAN TX
	TRISC1 = 0;
	RC1PPS = 0x33;

	// Set up CAN RX
	TRISC0 = 1;
	ANSELC0 = 0;
	CANRXPPS = 0x10;

	// set up CAN module
	can_timing_t can_setup;
	can_generate_timing_params(_XTAL_FREQ, &can_setup);
	pic18f26k83_can_init(&can_setup, can_msg_handler);

	// set up CAN tx buffer
	txb_init(tx_pool, sizeof(tx_pool), pic18f26k83_can_send, pic18f26k83_can_send_rdy);

	for (;;) {}
}

static void can_msg_handler(const can_msg_t *msg) {}
