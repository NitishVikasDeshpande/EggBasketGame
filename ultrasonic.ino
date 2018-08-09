const long speed=340;
int emit=5;
int receiver=6;
long e;
int count;
long sum=0;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(emit,OUTPUT);
pinMode(receiver ,INPUT);
pinMode(4,OUTPUT);
pinMode(7,OUTPUT);
digitalWrite(4,HIGH);
digitalWrite(7,LOW);
}

void loop() {sum=0;
  // put your main code here, to run repeatedly:
 

  
     digitalWrite(emit,HIGH);
  delayMicroseconds(10);
  digitalWrite(emit,LOW);
  delayMicroseconds(10);
 long t= pulseIn(receiver,HIGH);
 long d=340*t/20000;
 
  
  
 Serial.println(d);
 delay(100);
}
