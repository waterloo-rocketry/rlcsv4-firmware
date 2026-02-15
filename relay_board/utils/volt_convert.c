#include <stdint.h>

#include "adc.h"
#include "adc_types.h"

float get_adc_voltage() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANB0);
	float scaled_value =
		((float)adc_value / 4095.0) * 5.0; // Scale the ADC value then convert to voltage

	return scaled_value;
}

float get_input_voltage() {
	float voltage = get_adc_voltage() / 100.0;
	return voltage;
}

float get_input_current() {
	float voltage = get_input_voltage() / 0.25;
	return voltage;
}
