#include <avr/io.h>
#include <util/delay.h>

#ifndef uchar
#  define uchar  unsigned char
#endif

typedef enum { false, true } bool;

#define TEST_POINT_1 PD1
#define TEST_POINT_1_RESISTORS PD0
#define TEST_POINT_1_GATE PC7

#define TEST_POINT_2 PD4
#define TEST_POINT_2_RESISTORS PD3
#define TEST_POINT_2_GATE PD2

#define TEST_POINT_3 PD7
#define TEST_POINT_3_RESISTORS PD6
#define TEST_POINT_3_GATE PD5

#define SEG_A1 0
#define SEG_B1 1
#define SEG_C1 2
#define SEG_D1 3
#define SEG_E1 4
#define SEG_F1 5
#define SEG_G1 6

#define SEG_A2 7
#define SEG_B2 8
#define SEG_C2 9
#define SEG_D2 10
#define SEG_E2 11
#define SEG_F2 12
#define SEG_G2 13

#define SEG_A3 14
#define SEG_B3 15
#define SEG_C3 16
#define SEG_D3 17
#define SEG_E3 18
#define SEG_F3 19
#define SEG_G3 20




static uchar segments[21][2];

void init_segment_data()
{
	// SEGMENT 1
	segments[SEG_A1][0] = PC4; segments[SEG_A1][1] = 'C';
	segments[SEG_B1][0] = PC5; segments[SEG_B1][1] = 'C';
	segments[SEG_C1][0] = PC0; segments[SEG_C1][1] = 'C';
	segments[SEG_D1][0] = PC1; segments[SEG_D1][1] = 'C';
	segments[SEG_E1][0] = PC3; segments[SEG_E1][1] = 'C';
	segments[SEG_F1][0] = PC3; segments[SEG_F1][1] = 'C';
	segments[SEG_G1][0] = PC2; segments[SEG_G1][1] = 'C';

	// SEGMENT 2
	segments[SEG_A2][0] = PB6; segments[SEG_A2][1] = 'B';
	segments[SEG_B2][0] = PB7; segments[SEG_B2][1] = 'B';
	segments[SEG_C2][0] = PA0; segments[SEG_C2][1] = 'A';
	segments[SEG_D2][0] = PA1; segments[SEG_D2][1] = 'A';
	segments[SEG_E2][0] = PA3; segments[SEG_E2][1] = 'A';
	segments[SEG_F2][0] = PA3; segments[SEG_F2][1] = 'A';
	segments[SEG_G2][0] = PA2; segments[SEG_G2][1] = 'A';

	// SEGMENT 3
	segments[SEG_A3][0] = PB2; segments[SEG_A3][1] = 'B';
	segments[SEG_B3][0] = PB3; segments[SEG_B3][1] = 'B';
	segments[SEG_C3][0] = PB4; segments[SEG_C3][1] = 'B';
	segments[SEG_D3][0] = PB5; segments[SEG_D3][1] = 'B';
	segments[SEG_E3][0] = PB1; segments[SEG_E3][1] = 'B';
	segments[SEG_F3][0] = PB1; segments[SEG_F3][1] = 'B';
	segments[SEG_G3][0] = PB0; segments[SEG_G3][1] = 'B';
}

void led_clear()
{
	PORTA = 0x00;
	PORTB = 0x00;
	PORTC = 0x00;
}

void led_on(uchar segment)
{
	uchar ddr_value = _BV(segments[segment][0]); // set to output
	uchar port_value = _BV(segments[segment][0]); // set on

	if (segments[segment][1] == 'A') {
		DDRA |= ddr_value;
		PORTA |= port_value;
	} else if (segments[segment][1] == 'B') {
		DDRB |= ddr_value;
		PORTB |= port_value;
	} else if (segments[segment][1] == 'C') {
		DDRC |= ddr_value;
		PORTC |= port_value;
	}
}

void led_off(uchar segment)
{
	uchar ddr_value = _BV(segments[segment][0]); // set to output
	uchar port_value = _BV(segments[segment][0]); // set on

	if (segments[segment][1] == 'A') {
		DDRA |= ddr_value;
		PORTA &= ~port_value;
	} else if (segments[segment][1] == 'B') {
		DDRB |= ddr_value;
		PORTB &= ~port_value;
	} else if (segments[segment][1] == 'C') {
		DDRC |= ddr_value;
		PORTC &= ~port_value;
	}
}


void segments_all_on()
{
	led_on(SEG_A1); led_on(SEG_B1); led_on(SEG_C1); led_on(SEG_D1); led_on(SEG_E1); led_on(SEG_G1);
	led_on(SEG_A2); led_on(SEG_B2); led_on(SEG_C2); led_on(SEG_D2); led_on(SEG_E2); led_on(SEG_G2);
	led_on(SEG_A3); led_on(SEG_B3); led_on(SEG_C3); led_on(SEG_D3); led_on(SEG_E3); led_on(SEG_G3);
}

void segments_all_off()
{
	led_off(SEG_A1); led_off(SEG_B1); led_off(SEG_C1); led_off(SEG_D1); led_off(SEG_E1); led_off(SEG_G1);
	led_off(SEG_A2); led_off(SEG_B2); led_off(SEG_C2); led_off(SEG_D2); led_off(SEG_E2); led_off(SEG_G2);
	led_off(SEG_A3); led_off(SEG_B3); led_off(SEG_C3); led_off(SEG_D3); led_off(SEG_E3); led_off(SEG_G3);
}


bool is_base(int base, int collector, int emmiter)
{
	// Reset after previous tests ...
	PORTD |= _BV(TEST_POINT_1_RESISTORS);
	PORTD |= _BV(TEST_POINT_2_RESISTORS);
	PORTD |= _BV(TEST_POINT_3_RESISTORS);

	DDRD &= ~_BV(base); // set to input
	PORTD |= _BV(base); // set high

	_delay_ms(10);

	DDRD |= _BV(collector); // set to output
	DDRD |= _BV(emmiter); // set to output
	PORTD &= ~_BV(collector); // set low
	PORTD &= ~_BV(emmiter); // set low

	_delay_ms(10);

	if (bit_is_clear(PIND, base)) { return true; }

	return false;
}


int emitter;
int collector;
int base;

void detect_collector(int base_testpoint_number, int a_testpoint_number, int b_testpoint_number)
{
	/* BASE */

	int base_testpoint_pin;
	bool base_ready = false;
	if (base_testpoint_number == 1) {
		base_testpoint_pin = TEST_POINT_1;
		base_ready = true;
	} else if (base_testpoint_number == 2) {
		base_testpoint_pin = TEST_POINT_2;
		base_ready = true;
	} else if (base_testpoint_number == 3) {
		base_testpoint_pin = TEST_POINT_1;
		base_ready = true;
	}

	if (base_ready) {
		DDRD &= ~_BV(base_testpoint_pin); PORTD |= _BV(base_testpoint_pin); // IN high
	} else {
		return;
	}


	/* A */

	bool a_testpoint_ready = false;
	if (a_testpoint_number == 1) {
		DDRC |= _BV(TEST_POINT_1_GATE); PORTC |= _BV(TEST_POINT_1_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_1_RESISTORS); PORTD |= _BV(TEST_POINT_1_RESISTORS); // OUT high ***
		DDRD &= ~_BV(TEST_POINT_1); PORTD &= ~_BV(TEST_POINT_1); // IN low
		a_testpoint_ready = true;
	} else if (a_testpoint_number == 2) {
		DDRD |= _BV(TEST_POINT_2_GATE); PORTD |= _BV(TEST_POINT_2_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_2_RESISTORS); PORTD |= _BV(TEST_POINT_2_RESISTORS); // OUT high ***
		DDRD &= ~_BV(TEST_POINT_2); PORTD &= ~_BV(TEST_POINT_2); // IN low
		a_testpoint_ready = true;
	} else if (a_testpoint_number == 3) {
		DDRD |= _BV(TEST_POINT_3_GATE); PORTD |= _BV(TEST_POINT_3_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_3_RESISTORS); PORTD |= _BV(TEST_POINT_3_RESISTORS); // OUT high ***
		DDRD &= ~_BV(TEST_POINT_3); PORTD &= ~_BV(TEST_POINT_3); // IN low
		a_testpoint_ready = true;
	}


	/* B */

	int b_testpoint_pin;
	bool b_testpoint_ready = false;
	if (b_testpoint_number == 1) {
		b_testpoint_pin = TEST_POINT_1;
		DDRC |= _BV(TEST_POINT_1_GATE); PORTC |= _BV(TEST_POINT_1_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_1_RESISTORS); PORTD &= ~_BV(TEST_POINT_1_RESISTORS); // OUT low ***
		DDRD &= ~_BV(TEST_POINT_1); PORTD &= ~_BV(TEST_POINT_1); // IN low
		b_testpoint_ready = true;
	} else if (b_testpoint_number == 2) {
		b_testpoint_pin = TEST_POINT_2;
		DDRD |= _BV(TEST_POINT_2_GATE); PORTD |= _BV(TEST_POINT_2_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_2_RESISTORS); PORTD &= ~_BV(TEST_POINT_2_RESISTORS); // OUT low ***
		DDRD &= ~_BV(TEST_POINT_2); PORTD &= ~_BV(TEST_POINT_2); // IN low
		b_testpoint_ready = true;
	} else if (b_testpoint_number == 3) {
		b_testpoint_pin = TEST_POINT_3;
		DDRD |= _BV(TEST_POINT_3_GATE); PORTD |= _BV(TEST_POINT_3_GATE); // OUT high
		DDRD |= _BV(TEST_POINT_3_RESISTORS); PORTD &= ~_BV(TEST_POINT_3_RESISTORS); // OUT low ***
		DDRD &= ~_BV(TEST_POINT_3); PORTD &= ~_BV(TEST_POINT_3); // IN low
		b_testpoint_ready = true;
	}


	if (a_testpoint_ready && b_testpoint_ready) {
		if (bit_is_set(PIND, b_testpoint_pin)) {
			emitter = b_testpoint_number;
			collector = a_testpoint_number;
		}
	}
}


bool identify_leads()
{
	emitter = 0;
	collector = 0;
	base = 0;

	if (is_base(TEST_POINT_1, TEST_POINT_2, TEST_POINT_3)) {
		base = 1;
		detect_collector(base, 2, 3);
		if (emitter == 0 || collector == 0) detect_collector(base, 3, 2);
	} else if (is_base(TEST_POINT_2, TEST_POINT_1, TEST_POINT_3)) {
		base = 2;
		detect_collector(base, 1, 3);
		if (emitter == 0 || collector == 0) detect_collector(base, 3, 1);
	} else if (is_base(TEST_POINT_3, TEST_POINT_1, TEST_POINT_2)) {
		base = 3;
		detect_collector(base, 1, 2);
		if (emitter == 0 || collector == 0) detect_collector(base, 2, 1);
	}

	if (emitter > 0 && collector > 0 && base > 0) {
		return true;
	} else {
		return false;
	}
}


void led_on_b(int segment_number)
{
	if (segment_number == 1) {
		led_on(SEG_E1); led_on(SEG_G1); led_on(SEG_D1); led_on(SEG_C1);
	} else if (segment_number == 2) {
		led_on(SEG_E2); led_on(SEG_G2); led_on(SEG_D2); led_on(SEG_C2);
	} else if (segment_number == 3) {
		led_on(SEG_E3); led_on(SEG_G3); led_on(SEG_D3); led_on(SEG_C3);
	}
}


void led_on_c(int segment_number)
{
	if (segment_number == 1) {
		led_on(SEG_A1); led_on(SEG_D1); led_on(SEG_E1);
	} else if (segment_number == 2) {
		led_on(SEG_A2); led_on(SEG_D2); led_on(SEG_E2);
	} else if (segment_number == 3) {
		led_on(SEG_A3); led_on(SEG_D3); led_on(SEG_E3);
	}
}


void led_on_e(int segment_number)
{
	if (segment_number == 1) {
		led_on(SEG_A1); led_on(SEG_D1); led_on(SEG_E1); led_on(SEG_G1);
	} else if (segment_number == 2) {
		led_on(SEG_A2); led_on(SEG_D2); led_on(SEG_E2); led_on(SEG_G2);
	} else if (segment_number == 3) {
		led_on(SEG_A3); led_on(SEG_D3); led_on(SEG_E3); led_on(SEG_G3);
	}
}



/*** MAIN ***/

int __attribute__((noreturn)) main(void)
{
	init_segment_data();
	segments_all_off();

	int wait_time = 30;

	while (1) {
		if (identify_leads()) {
			segments_all_off();
			_delay_ms(10);
			led_on_b(base);
			led_on_c(collector);
			led_on_e(emitter);
			_delay_ms(1000);

		} else {
			led_on(SEG_A1); _delay_ms(wait_time);
			led_off(SEG_D1); _delay_ms(wait_time);

			led_on(SEG_A2); _delay_ms(wait_time);
			led_off(SEG_E1); _delay_ms(wait_time);

			led_on(SEG_A3); _delay_ms(wait_time);
			led_off(SEG_A1); _delay_ms(wait_time);

			led_on(SEG_B3); _delay_ms(wait_time);
			led_off(SEG_A2); _delay_ms(wait_time);

			led_on(SEG_C3); _delay_ms(wait_time);
			led_off(SEG_A3); _delay_ms(wait_time);

			led_on(SEG_D3); _delay_ms(wait_time);
			led_off(SEG_B3); _delay_ms(wait_time);

			led_on(SEG_D2); _delay_ms(wait_time);
			led_off(SEG_C3); _delay_ms(wait_time);

			led_on(SEG_D1); _delay_ms(wait_time);
			led_off(SEG_D3); _delay_ms(wait_time);

			led_on(SEG_E1); _delay_ms(wait_time);
			led_off(SEG_D2); _delay_ms(wait_time);
		}
	}
}

