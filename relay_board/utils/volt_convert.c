#include <stdint.h>

#include "adc.h"
#include "adc_types.h"


float get_adc_voltage_output1() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANA5);
	float scaled_value =
		((float)adc_value / 4095.0) * 6.6; // Scale the ADC value then convert to voltage

	return scaled_value;
}

float get_adc_voltage_output2() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANC6);
	float scaled_value =
		((float)adc_value / 4095.0) * 6.6; // Scale the ADC value then convert to voltage

	return scaled_value;
}

float get_adc_voltage_12v() {
    //TODO`: Vdiv
    adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANC2);

	float scaled_value =
		((float)adc_value / 4095.0) * 3; // Scale the ADC value then convert to voltage

	return scaled_value;
}

float get_adc_voltage_battery() {
	adc_result_t adc_value = ADC_ChannelSelectAndConvert(ADC_CHANNEL_ANB2);
	float scaled_value =
		((float)adc_value / 4095.0) * 6.6; // Scale the ADC value then convert to voltage

	return scaled_value;
}