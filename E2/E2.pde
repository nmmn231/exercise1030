PImage sun ;
PImage earth ;
PImage moon ;
float phi=0;


void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");

}
void draw(){
  background(0);
  imageMode(CENTER);
  image(sun,width/2,height/2);
  pushMatrix();  
  translate(width/2,height/2);
  float a=map(mouseX-width/2,-width/2,width/2,-PI,PI);
  
  float eX=230,eY=0;
  rotate(a);
  image(earth,eX,eY);
  
  float mX=eX+cos(a+phi)*50;
  float mY=eY+sin(a+phi)*50;
  image(moon,mX,mY);
  
  popMatrix();
   //<>//
   phi+=0.06;
   
   
  
}
