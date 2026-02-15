// volt_convert.h
#ifndef VOLT_CONVERT_H
#define VOLT_CONVERT_H

// Returns the voltage measured at output 1 (scaled from ADC)
float get_adc_voltage_output1();

// Returns the voltage measured at output 2 (scaled from ADC)
float get_adc_voltage_output2();

// Returns the voltage measured at the 12V rail (scaled from ADC)
float get_adc_voltage_12v();

// Returns the voltage measured at the battery (scaled from ADC)
float get_adc_voltage_battery();

#endif // VOLT_CONVERT_H
