float xe;
int numCircles = 80;
float xy=500;
float ye;
float col=200;
int rbcolor=255;
int gbcolor;
int bbcolor;
float aperture=.3;
float size=1;

PImage head;
PImage body;
PImage tail;

int x = 0;


Circle[] circles = new Circle[numCircles]; 

void setup(){
size(1000,500);
 head = loadImage ("cabeza.png");
  body = loadImage ("cuerpo2.png");
  tail = loadImage ("cola.png");
}

void draw(){
  background(rbcolor,gbcolor,bbcolor);
  
   if (keyPressed) {
    if (key == 'r' || key == 'R') {
      rbcolor=255;
    }
    if (key == 'g' || key == 'G') {
      gbcolor=255;
    }
    if (key == 'b' || key == 'B') {
      bbcolor=255;
    }
    if (key == 't' || key == 'T') {
      rbcolor=0;
    }
    if (key == 'h' || key == 'H') {
      gbcolor=0;
    }
    if (key == 'n' || key == 'N') {
      bbcolor=0;
    }
  } 
  
  
   //image (head,0,0);
  //image (body,0,0);
  //image (tail,0,0);
  pushMatrix();
  translate((900), (height/2));
  scale(10);
  
 
  if (keyPressed) {
    if (key == '1' || key == '1') {
      aperture=.1;
    }
    if (key == '2' || key == '2') {
      aperture=.2;
    }
    if (key == '3' || key == '3') {
      aperture=.3;
    }
    if (key == '4' || key == '4') {
      aperture=.4;
    }
    if (key == '5' || key == '5') {
      aperture=.5;
    }
    if (key == '6' || key == '6') {
      aperture=.6;
    }
  } 
  
   if (keyPressed) {
    if (key == 'q' || key == 'Q') {
      size=1;
    }
    if (key == 'w' || key == 'W') {
      size=2;
    }
    if (key == 'e' || key == 'E') {
      size=3;
    }
  } 
  
  
  xe=xe+50;
  //xy=xy-10;
  //ye=ye-10;

    for (int i=0; i<numCircles; i++) {
    xy=i;
    ye=-i;
     
    circles[i] = new Circle( cos(xe-(aperture*i)), xy/size,ye/8,90,col);     
    //circles2[i] = new Circle( sin(xe-(.5*i)), xy,xy/10,90);
    }
   
   for (int i=0; i<numCircles; i++) {
    circles[i].display(); 
   }
  
  noStroke();
  
          
  popMatrix();
  
  if (key == 'l' || key == 'L') {
  
  if (x < 100) {
    line(x, 0, x, 100);
    x = x + 1;
  } else {
    noLoop();
  }
   saveFrame("line-######.png");
}
}