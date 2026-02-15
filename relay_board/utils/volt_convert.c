#include <stdint.h>

#include "adc.h"
#include "adc_types.h"

float get_adc_voltage_5v() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANB0);
	float scaled_value =
		((float)adc_value / 4095.0) * 5.0; // Scale the ADC value then convert to voltage

	return scaled_value;
}

float get_adc_voltage_12v() {
    adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANB1);
	float scaled_value =
		((float)adc_value / 4095.0) * 12.0; // Scale the ADC value then convert to voltage

	return scaled_value;
}