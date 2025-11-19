/**
 * @file
 * @brief MCP23008 driver
 *
 * This module provides functionality for the MCP23008 I/O expander using the
 * I2C interface. It supports initialization and reading/writing to its 8 GPIO
 * pins.
 */

#ifndef MCP23008_H
#define MCP23008_H

#include <stdint.h>

#include "common.h"

/**
 * @brief Initialize MCP23008 with I/O directions.
 *
 * This function initializes the MCP23008 with specified I/O directions.
 *
 * Each bit of io_dir determines I/O direction for one pin, with bit number
 * corresponding to pin number. Bit value of 1 means output, 0 means input. Note
 * GP7 must be configured as an output.
 *
 * @param io_dir I/O directions for each pin
 * @return w_status_t Returns status code
 */
w_status_t mcp23008_init(uint8_t io_dir);

/**
 * @brief Read all GPIO pins of MCP23008.
 *
 * This function reads the values of all GPIO pins. The value of bit X of *data
 * is set to the read value of pin GPX.
 *
 * @param data Pointer to place in which to read GPIO pin values.
 * @return w_status_t Returns status code
 */
w_status_t mcp23008_read_gpio(uint8_t *data);

/**
 * @brief Writes all GPIO pins configured as outputs of MCP23008.
 *
 * This function writes to all GPIO pins which are configured as outputs. The
 * value of pin GPX will be set to the value of bit X of data (if pin GPX was
 * configured as an output).
 *
 * @param data Binary value representing values to write to pins.
 * @return w_status_t Returns status code
 */
w_status_t mcp23008_write_gpio(uint8_t data);

#endif
