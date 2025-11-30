#include "canlib.h"
#include "mcc_generated_files/system/system.h"
#include "timer.h"
#include <xc.h>

//
#define LED_OFF 1
#define LED_ON 0
#define LED_R LATA4
#define LED_W LATA3
#define LED_G LATA2
#define STATUS_TIME_DIFF_ms 500

static void can_msg_handler(const can_msg_t *msg);
void LED_init(void);

// memory pool for the CAN tx buffer
uint8_t tx_pool[200];

int main(void) {
	SYSTEM_Initialize();

	LED_init();

	// init our millisecond function
	timer0_init();
	uint32_t last_millis = millis();
	uint32_t last_message_millis = 0;

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

	while (1) {
		if (millis() - last_millis >= STATUS_TIME_DIFF_ms) {
			// check for general board status
			uint32_t general_error = 0;
			uint16_t board_error = 0;

			can_msg_t status_msg;
			build_general_board_status_msg(
				PRIO_MEDIUM, (uint16_t)millis(), general_error, board_error, &status_msg);
			txb_enqueue(&status_msg);

			// White LED flashes during safe state.
			LED_W = LED_W ^ LED_OFF;
			last_millis = millis();
		}

		txb_heartbeat();
	}
}

// interrupt handler for millis and timer.h
static void __interrupt() interrupt_handler() {
	if (PIR5) {
		pic18f26k83_can_handle_interrupt();
	}

	// Timer0 has overflowed - update millis() function
	// This happens approximately every 500us
	if (PIE3bits.TMR0IE == 1 && PIR3bits.TMR0IF == 1) {
		timer0_handle_interrupt();
		PIR3bits.TMR0IF = 0;
	}
}

static void can_msg_handler(const can_msg_t *msg) {
	// seen_can_message = true;
	uint16_t msg_type = get_message_type(msg);

	// ignore messages that were sent from this board
	if (get_board_type_unique_id(msg) == BOARD_TYPE_UNIQUE_ID) {
		return;
	}

	switch (msg_type) {
		case MSG_ACTUATOR_CMD:
			if (get_actuator_id(msg) == ACTUATOR_RLCS_RELAY_POWER) {
				if (get_cmd_actuator_state(msg) == ACT_STATE_ON) {
					LED_R = LED_ON;
				} else {
					LED_R = LED_OFF;
				}
			} else if (get_actuator_id(msg) == ACTUATOR_RLCS_RELAY_SELECT) {
				if (get_cmd_actuator_state(msg) == ACT_STATE_ON) {
					LED_G = LED_ON;
				} else {
					LED_G = LED_OFF;
				}
			}
			break;

		case MSG_LEDS_ON:

			break;

		case MSG_LEDS_OFF:

			break;

		case MSG_RESET_CMD:
			if (check_board_need_reset(msg)) {
				RESET();
			}
			break;

		// all the other ones - do nothing
		default:
			break;
	}
}

void LED_init(void) {
	TRISA4 = 0;
	LED_R = LED_OFF;
	TRISA3 = 0;
	LED_W = LED_OFF;
	TRISA2 = 0;
	LED_G = LED_OFF;
}