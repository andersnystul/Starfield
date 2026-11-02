//your code here
Particle [] parts;
void setup() {
 size(400,400); 
 parts = new Particle[1000];
 for (int i = 0; i < 1; i++) {
   parts[i] = new OddballParticle(); }
 for (int i = 1; i < parts.length; i++) {
   parts[i] = new Particle(); }
}
void draw () {
background(0);
 for (int j = 0; j < parts.length; j++) {
   parts[j].show();
   parts[j].move();
 }}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  
  Particle() {
   myAngle = Math.random()*2*Math.PI;
   mySpeed = (Math.random()*10);
   myX = myY = 200;
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
{
  myX = myX + Math.cos(myAngle)*mySpeed;
  myY = myY + Math.sin(myAngle)*mySpeed;
  
}
void show()
{
  fill(myColor);
  ellipse((float)myX,(float)myY,10,10);
  
}
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() {
   myAngle = Math.random() * 2 * Math.PI;
   mySpeed = Math.random()*2;
   myX = myY = 200;
   myColor = color(234,320,110);
  }
  void show()
{
  fill(myColor);
  rect((float)myX,(float)myY,20,20);
  
}
  void move()
{
  myX = myX + (int)(Math.random()*3)-1;
  myY = myY + (int)(Math.random()*3)-1;
}
}

