#include <uarm_library.h>

#define STOPPER 2   // LOW = Pressed
#define BUZZER  3   // HIGH = ON
#define BTN_D4  4   // LOW = Pressed
#define BTN_D7  7   // LOW = Pressed
/*
void move_to_at_once(double x, double y, double z, int relative, double servo_4_angle)
void angle_to_coordinate(double& x, double& y, double &z)
void alert(byte times, byte runTime, byte stopTime)
*/

float STEP = 1;     // Distance a move takes
float TIME = 0.1;   // Duration a move takes
String value = "";  // new value of STEP or TIME
bool waitStep = false;
bool waitTime = false;

void setup() {
    Serial.begin(9600);

    pinMode(STOPPER, INPUT);
    pinMode(BUZZER, OUTPUT);
    pinMode(BTN_D4, INPUT);
    pinMode(BTN_D7, INPUT);
}

void loop() {
    if (Serial.available() > 0) {
        char readSerial = Serial.read();
        Serial.println("------------------");
        Serial.println(readSerial);

        /************
        * Movements *
        *************
        f: fore
        b: back
        l: left
        r: right
        u: up
        d: down
        */

        if (readSerial == 'f') {
            uarm.move_to_at_once(0, -STEP, 0, 1, 0);
        } else if (readSerial == 'b') {
            uarm.move_to_at_once(0, STEP, 0, 1, 0);
        } else if (readSerial == 'l') {
            uarm.move_to_at_once(STEP, 0, 0, 1, 0);
        } else if (readSerial == 'r') {
            uarm.move_to_at_once(-STEP, 0, 0, 1, 0);
        } else if (readSerial == 'u') {
            uarm.move_to_at_once(0, 0, STEP, 1, 0);
        } else if (readSerial == 'd') {
            uarm.move_to_at_once(0, 0, -STEP, 1, 0);
        }

        /***********
        * Controls *
        ************
        A: attach
        D: detach
        B: buzz
        */
        if (readSerial == 'A') {
            uarm.init();
            Serial.println("Can't manually attach.");
        } else if (readSerial == 'D') {
            uarm.set_servo_status(false, SERVO_ROT_NUM);
            uarm.set_servo_status(false, SERVO_LEFT_NUM);
            uarm.set_servo_status(false, SERVO_RIGHT_NUM);
            uarm.set_servo_status(false, SERVO_HAND_ROT_NUM);
            Serial.println("Successfully detached.");
        } else if (readSerial == 'B') {
            uarm.alert(1, 2, 1);
        }

        /*********
        * Status *
        **********
        C: get xyz coordinates
        P: get PIN status
        */
        if (readSerial == 'C') {
            double x, y, z;
            uarm.angle_to_coordinate(x, y, z);
            Serial.println(x);
            Serial.println(y);
            Serial.println(z);
        } else if (readSerial == 'P') {
            Serial.println(digitalRead(STOPPER));
            Serial.println(digitalRead(BTN_D4));
            Serial.println(digitalRead(BTN_D7));
        }

        /***********
        * Settings *
        ************
        S: set Step
        T: set Time
        R: reset Step and Time
        */
        if (readSerial == 'S') {
            if (waitStep) {
                STEP = value.toFloat();
                waitStep = false;
                Serial.println("Successfully set step");
            } else {
                value = "";
                waitStep = true;
            }
        } else if (readSerial == 'T') {
            if (waitTime) {
                TIME = value.toFloat();
                waitTime = false;
                Serial.println("Successfully set time");
            } else {
                value = "";
                waitTime = true;
            }
        } else if (waitStep || waitTime) {
            value.concat(readSerial);
        } else if (readSerial == 'R') {
            STEP = 1;
            TIME = 0.1;
            Serial.println("Successfully reset step and time");
        }
    }
}
