#include <stdint.h>

#include "common.h"
#include "i2c.h"
#include "mcp23008.h"

/**
 * @brief I2C slave address (section 1.4.1 of datasheet)
 * Note 7-bit I2C slave address doesn't contain R/W bit, and will be shifted left 1
 * bit as per rocketlib ref.
 */
#define MCP_I2C_ADDR 0x20

/**
 * @brief Register addresses (section 1.6 of datasheet)
 */
#define IODIR_REG 0x00
#define GPIO_REG 0x09

w_status_t mcp23008_init(uint8_t iodir) {
	w_status_t i2c_status;
	if ((i2c_status = i2c_init(0)) != W_SUCCESS) {
		return i2c_status;
	}
	// Bit 7 must be set to 0 since GP7 must be output (section 1.6.1 of datasheet)
	iodir &= 0x7F;
	return i2c_write_reg8(MCP_I2C_ADDR, IODIR_REG, iodir);
}

w_status_t mcp23008_read_gpio(uint8_t *data) {
	return i2c_read_reg8(MCP_I2C_ADDR, GPIO_REG, data);
}

w_status_t mcp23008_write_gpio(uint8_t data) {
	return i2c_write_reg8(MCP_I2C_ADDR, GPIO_REG, data);
}
