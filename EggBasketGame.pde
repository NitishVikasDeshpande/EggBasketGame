import processing.serial.*;
float x,y=0;
Serial mySerial;
float pos;
int score;
int life=3;
int num;
float sum=0,avg;
int count;


void setup(){
 String portname=Serial.list()[0];
 mySerial=new Serial(this,portname,9600);
  size(900,600);
  frameRate(10);
  
}
boolean notNull(String s){
  try {
    s.trim();
  } catch (NullPointerException e){
    return false;
  }
  return true;
}
void draw(){for(count=1;count<=5;count++){ if(mySerial.available()>0){
    String val=mySerial.readStringUntil('\n');
   if(notNull(val)==true){
    val=val.trim();
     num=Integer.parseInt(val);}
    pos =map(num,10,30,40,860);
sum+=pos;  
}}
    avg=sum/5;
  background(0,255,0);

  if(y>580) {y=0;
  x=random(0,600);}
  fill(255,0,0);
  ellipse(avg,580,40,40);
  stroke(0,255,0);
  fill(0,255,0);
  ellipse(avg,560,40,40);
  
  fill(255,0,0);
  
  ellipse(x,y,20,20);
  y+=10;
  if((x>=avg-30)&&(x<=avg+30)&&y==570) score++;
  else if((x!=avg)&&y==570)  life--;
  
while(life<=0);
sum=0;
}
