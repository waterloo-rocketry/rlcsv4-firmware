#include <stdint.h>

#include "adc.h"
#include "adc_types.h"

float get_adc_voltage_output1() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANA5);

	// Scale the ADC value then convert to voltage
	float scaled_value = ((float)adc_value / 4095.0) * 6.6;

	return scaled_value;
}

float get_adc_voltage_output2() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANC6);

	// Scale the ADC value then convert to voltage (6.6 = (56k + 10k)/10k)
	float scaled_value = ((float)adc_value / 4095.0) * 6.6;

	return scaled_value;
}

float get_adc_voltage_12v() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANC2);

	// Scale the ADC value then convert to voltage (3 = (20k + 10k)/10k)
	float scaled_value = ((float)adc_value / 4095.0) * 3;

	return scaled_value;
}

float get_adc_voltage_battery() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANB2);

	// Scale the ADC value then convert to voltage
	float scaled_value = ((float)adc_value / 4095.0) * 6.6;
	return scaled_value;
}