## [1.3.0] - 2016-05-10
### Updated - Alex Tan

### Changes

- ADD SYSEX Command, BUZZER_ALERT 0x24


## [1.2.0] - 2016-05-02
### Updated - Alex Tan

### Changes

- ADD SYSEX Command, REPORT_LIBRARY_VERSION (0x23) , Report Library Version
- Not Report library version once connect, report the UARM Firmata Version


## [1.1.1] - 2016-05-02
### Updated - Alex Tan

### Fix

- READ_EEPROM (0x1A) , address type change byte to int, (if address exceed 255, will have problem)


## [1.1.0] - 2016-05-02
### Updated - Alex Tan

### Changes

- Add Support readSerialNumber(0x21) writeSerialNumber(0x22)


## [1.0.1] - 2016-04-30
### Updated - Alex Tan

### Changes

- Add Version define for UArm Firmata

### Fix
- Add pin number/servo number/address in response message READ_ANGLE, READ_DIGITAL, READ_ANALOG, READ_EEPROM
