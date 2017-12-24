/*
 * layer.h
 *
 *  Created on: Nov 13, 2017
 *      Author: shrey
 */

#ifndef LAYER_H_
#define LAYER_H_

#include "stack.h"

char * receive(int device);
int transmit(int device, struct packet * pack);
void rx_ethernet_isr (void *context);
void tx_ethernet_isr (void *context);

#endif /* LAYER_H_ */
