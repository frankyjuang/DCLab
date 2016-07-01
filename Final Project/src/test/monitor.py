#!/bin/python

import serial

#####################
# Initialize Serial #
#####################

ser = serial.Serial('/dev/ttyUSB0', 9600, xonxoff=True)
# ser.timeout = 1
ser.reset_input_buffer()
ser.reset_output_buffer()

##############
# Operations #
##############

while True:
    res = ser.readline()
    print(res)

ser.close()
