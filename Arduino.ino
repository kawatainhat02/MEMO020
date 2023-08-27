void setup() {
   Serial.begin(9600);
}
void loop() {
   Serial.println("Hello World!");
   delay(1000);
}

#define buzzerPin 7                // buzzer to arduino uno pin 7

void setup(){
   pinMode(buzzerPin, OUTPUT);    // Set buzzer - pin 9 as an output
}

void loop(){
   tone(buzzerPin, 2000);     // Send 2000Hz sound signal...
   delay(500);                // ...for 0.5 sec
   noTone(buzzerPin);         // Stop sound...
   delay(500);                // ...for 0.5 sec
}

