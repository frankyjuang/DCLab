#!/usr/bin/env python
from serial import Serial, EIGHTBITS, PARITY_NONE, STOPBITS_ONE
from sys import argv, exit

assert len(argv) == 2
s = Serial(
    port=argv[1],
    baudrate=115200,
    bytesize=EIGHTBITS,
    parity=PARITY_NONE,
    stopbits=STOPBITS_ONE,
    xonxoff=False,
    rtscts=False,
    timeout=1
)

while True:
    # data = s.read(31)
    # for j in range(len(data)):
        # print("%x"%data[j], end=' ')
    print(s.read())

