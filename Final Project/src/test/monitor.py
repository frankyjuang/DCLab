#!/bin/python

import serial
import sys

#####################
# Initialize Serial #
#####################

port = sys.argv[1]
ser = serial.Serial(port, 9600, xonxoff=True)
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
