class Circle {
  float x,y; // location
  float dim; // dimension
  float c; // color
  float angle;
 
  Circle(float x, float y,float dim, float angle, float c) {
    this.x = x;
    this.y = y;
    this.dim = dim;
    this.angle=angle;
    this.c =c;
  }
 
  void display() {
  pushMatrix();
  
  rotate(radians(angle));
  translate(x, y);
  fill(c,0,0);
  image (body,0,0,dim,dim);
  //ellipse(x, y,dim,dim);
  popMatrix();
  }
}