#!/bin/python

import serial
import getch
from time import sleep
import signal
import sys

#####################
# Initialize Serial #
#####################

ser = serial.Serial('/dev/ttyUSB0', 9600, xonxoff=True)
# ser.timeout = 1
ser.reset_input_buffer()
ser.reset_output_buffer()

####################
# Helper Functions #
####################

def handler(signum, frame):
    print("Emergency Interrupt")
    ser.reset_input_buffer()
    ser.reset_output_buffer()
    ser.write(b'D')
    ser.close()
    sys.exit(0)

def mapGameKey(key):
    print(key)
    if key == "8":
        return "f"
    elif key == "2":
        return "b"
    elif key == "4":
        return "l"
    elif key == "6":
        return "r"
    elif key == "5":
        return "u"
    elif key == "0":
        return "d"
    else:
        return ""

def printHelp():
    print("=")
    print("Movements\tControls  \tStatus    \tSettings")
    print("f: fore  \tA: attach \tC: get xyz\tS: set Step")
    print("b: back  \tD: detach \tP: get PIN\tT: set Time")
    print("l: left  \tB: buzz   \t          \tR: reset S/T")
    print("r: right \t          \t          \t")
    print("u: up    \t          \t          \t")
    print("d: down  \t          \t          \t")
    print("=")
    print("m to enter game mode")
    print("=")

##############
# Operations #
##############

signal.signal(signal.SIGINT, handler)

ser.write(b'u')
print("h for help");
while True:
    cmd = input()
    if cmd == "m":     # enter game mode
        print("Enter Game mode (q to quit)")
        while True:
            ch = getch.getch()
            if ch == "q":
                print("Leave Game mode")
                printHelp()
                break;
            ch = mapGameKey(ch)
            ser.write(str.encode(ch))
            # sleep(2)
        continue
    elif cmd == "h" or cmd == "help":
        printHelp()
        continue
    print(str.encode(cmd))
    ser.write(str.encode(cmd))
    while ser.out_waiting > 0:
        print(".", end="")
    print("=============")

ser.close()
