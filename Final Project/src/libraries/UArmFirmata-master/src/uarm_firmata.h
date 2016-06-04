
#ifndef UARMFIRMATA_h
#define UARMFIRMATA_h


#include <ConfigurableFirmata.h>
#include <FirmataFeature.h>

#define UARM_FIRMATA_MAJOR_VERSION 1
#define UARM_FIRMATA_MINOR_VERSION 3
#define UARM_FIRMATA_BUGFIX        0

#define UARM_CODE                   (0XAA)

#define READ_ANGLE                  (0X10)
#define WRITE_ANGLE                 (0X11)
#define READ_COORDS                 (0X12)
#define WRITE_COORDS                (0X13)
#define READ_DIGITAL                (0X14)
#define WRITE_DIGITAL               (0X15)
#define READ_ANALOG                 (0X16)
#define WRITE_ANALOG                (0X17)
#define READ_EEPROM                 (0X1A)
#define WRITE_EEPROM                (0X1B)
#define DETACH_SERVO                (0X1C)
#define PUMP_STATUS                 (0X1D)
#define WRITE_STRETCH               (0X1E)
#define WRITE_LEFT_RIGHT_ANGLE      (0X1F)
#define GRIPPER_STATUS              (0X20)
#define READ_SERIAL_NUMBER          (0x21)
#define WRITE_SERIAL_NUMBER         (0x22)
#define REPORT_LIBRARY_VERSION      (0x23)
#define BUZZER_ALERT                (0x24)

#define DATA_TYPE_BYTE              1
#define DATA_TYPE_INTEGER           2
#define DATA_TYPE_FLOAT             4

#include "EEPROM.h"
#include "uarm_library.h"

class UArmFirmata : public FirmataFeature
{
public:
    UArmFirmata();
    boolean handleSysex(byte command, byte argc, byte *argv);
    boolean handlePinMode(byte pin, int mode);
    void handleCapability(byte pin);
    void reset();
    void report();

private:
    static void sendFloatAsFour7bitBytes(float val);
    static void sendFloatAsThree7bitBytes(float val);
    static void sendIntegerAsThree7bitBytes(int val);
};

#endif
