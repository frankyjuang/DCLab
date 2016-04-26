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
fp_key = open('key.bin', 'rb')
#fp_enc = open('golden/enc3.bin', 'rb')
fp_enc = open('enc.bin', 'rb')
fp_dec = open('dec.bin', 'wb')
assert fp_key and fp_enc and fp_dec

key = fp_key.read(64)
enc = fp_enc.read()
print(len(enc))
assert len(enc) % 32 == 0
print(len(key))

print("key:")
for i in range(len(key)):
    print("%x"%key[i], end=' ')
    if i == 31 or i == 63:
        print()

print("enc:")
for i in range(len(enc)):
    print("%x"%enc[i], end=' ')
    if i % 32 == 31:
        print()

#exit()
s.write(key)
for i in range(0, len(enc), 32):
#  for i in range(0, 64, 32):
    print(i)
    s.write(enc[i:i+32])
    dec = s.read(31)
    for j in range(len(dec)):
        print("%x"%dec[j], end=' ')
    print()
    fp_dec.write(dec)

fp_key.close()
fp_enc.close()
fp_dec.close()
