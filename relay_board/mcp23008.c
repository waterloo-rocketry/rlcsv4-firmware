#include <stdint.h>

#include "common.h"
#include "i2c.h"
#include "mcp23008.h"

/**
 * @brief I2C slave address
 */
#define MCP_I2C_ADDR 0x40

/**
 * @brief Register addresses
 */
#define IODIR_REG 0x00
#define GPIO_REG 0x09

w_status_t mcp23008_init(uint8_t iodir) {
	w_status_t i2c_status;

	if ((i2c_status = i2c_init(0)) != W_SUCCESS) {
		return i2c_status;
	}
	iodir &= 0x7F; // Bit 7 must be set to 0 since GP7 must be output
	if ((i2c_status = i2c_write_reg8(MCP_I2C_ADDR, IODIR_REG, iodir)) != W_SUCCESS) {
		return i2c_status;
	}

	return W_SUCCESS;
}

w_status_t mcp23008_read_gpio(uint8_t *data) {
	return i2c_read_reg8(MCP_I2C_ADDR, GPIO_REG, data);
}

w_status_t mcp23008_write_gpio(uint8_t data) {
	return i2c_write_reg8(MCP_I2C_ADDR, GPIO_REG, data);
}
