#include <SoftwareSerial.h>
#include <uarm_library.h>

// Analog Pins
#define FSR     7

SoftwareSerial mySerial(8, 9);    // RX, TX
float x, y, z;
int xx, yy, zz;
float sX, sY, sZ;
float eX, eY, eZ;
int index, waitXYZ;

void setup() {
  // Serial Init
  Serial.begin(57600);
  while (!Serial) { ; }
  Serial.println("Serial Init");

  // mySerial Init
  mySerial.begin(4800);
  mySerial.println("mySerial Init");
  uarm.init();
}

// {[(5.81)(-22.11)(8.29)][(4.15)(-16.54)(8.18)]}

void loop() {
  // mySerial --> Serial
  if (mySerial.available()) {
    byte data = mySerial.read();
  //if (Serial.available()) {
    //byte data = Serial.read();
    Serial.write(data);

    /*
    if (data == 'A') {
      uarm.init();
      Serial.println("Successfully attached.");
    } else if (data == 'D') {
      uarm.set_servo_status(false, SERVO_ROT_NUM);
      uarm.set_servo_status(false, SERVO_LEFT_NUM);
      uarm.set_servo_status(false, SERVO_RIGHT_NUM);
      uarm.set_servo_status(false, SERVO_HAND_ROT_NUM);
      Serial.println("Successfully detached.");
    } else if (data == 'C') {
      double x, y, z;
      uarm.angle_to_coordinate(x, y, z);
      Serial.println(x);
      Serial.println(y);
      Serial.println(z);
    } else if (data == 'F') {
      Serial.println(analogRead(FSR));
    }
    */

    if (data == B00001111) {
      index = 0;
    } else if (data == B11110000) {
      // move to start point sky
      //uarm.move_to_at_once(sX, sY, sZ+1);
      uarm.move_to(sX, sY, sZ+1);
      delay(1000);
      // move to start point ground
      //uarm.move_to_at_once(sX, sY, sZ);
      uarm.move_to(sX, sY, sZ);
      delay(1000);
      // move to end point ground
      //uarm.move_to_at_once(eX, eY, eZ);
      uarm.move_to(eX, eY, eZ);
      delay(1000);
      // move to end point sky
      //uarm.move_to_at_once(eX, eY, eZ+1);
      uarm.move_to(eX, eY, eZ+1);
      /*
      Serial.println(sX);
      Serial.println(sY);
      Serial.println(sZ);
      Serial.println(eX);
      Serial.println(eY);
      Serial.println(eZ);
      */
    } else if (data == B00110011) {
      waitXYZ = 0;
      index += 1;
    } else if (data == B11001100) {
      if (index == 1) {
        sX = x;
        sY = y;
        sZ = z;
      } else if (index == 2) {
        eX = x;
        eY = y;
        eZ = z;
      } else {
        Serial.println("index error");
      }
      Serial.println(x);
      Serial.println(y);
      Serial.println(z);
    } else if (data == B01010101) {
      waitXYZ += 1;
    } else if (data == B10101010) {
      if (waitXYZ == 1)
        x = xx / 128 - 32;
      else if (waitXYZ == 2)
        y = yy / 128 - 32;
      else if (waitXYZ == 3)
        z = zz / 128 - 32;
      else 
        Serial.println("waitXYZ error");
    } else if (waitXYZ >= 1 && waitXYZ <= 3) {
      if (waitXYZ == 1)
        xx = xx << 8 | data;
      else if (waitXYZ == 2)
        yy = yy << 8 | data;
      else if (waitXYZ == 3)
        zz = zz << 8 | data;
      else 
        Serial.println("waitXYZ error");
    }

  }

  // Serial --> mySerial
  //if (Serial.available()) {
  //  mySerial.write(Serial.read());
  //}
}
