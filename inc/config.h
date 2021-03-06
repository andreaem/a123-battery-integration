/**
 * @file config.h
 * @author Eric Ponce
 * @date 11 July 2015
 * @brief BMS Configuration File
 */

#ifndef _CONFIG_H_
#define _CONFIG_H_


#define MODULE_COUNT 1
#define CELL_SERIES 22
#define CELL_PARALLEL 3
#define CELL_COUNT MODULE_COUNT * CELL_SERIES
#define NODES_PER_MODULE 2
#define NODE_COUNT MODULE_COUNT * NODES_PER_MODULE


#endif