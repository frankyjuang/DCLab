#!/bin/python2
import pyuarm

uarm = pyuarm.uArm(debug=False)
print uarm.read_coordinate()
uarm.attach_all_servos()
uarm.move_to(0, -10, 20)
# uarm.move_to(0, 0, 5, relative_flags=1, ease_type=1)
# uarm.alarm(3, 100, 100)
print uarm.read_coordinate()
