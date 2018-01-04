float[] f(float r, float theta) { 
  float[] p = new float[2]; 
  theta *= PI/180; 
  p[0] = r*cos(theta); 
  p[1] = r*sin(theta); 
  return p;
}
void setup() {
  size(1000, 1000);
}
void draw() {
  background(255); 
  color c, d;
  int r = 100;
  int r1 = 50;
  int r2 = 150;
  c = color(#FA901E); 
  d = color(#9B9A99); 
  
  translate(300, 500);
  noStroke();
  fill(c);
  ellipse(0, 0, r, r);
  fill(d); 
  for(int j = 0; j < 6; j++) {
    float[] p = f(160, j*(360/6)); 
    ellipse(p[0], p[1], r2, r2); 
  }
  
  translate(400, 0); 
  fill(c);
  ellipse(0, 0,r, r);
  fill(d); 
  for(int j = 0; j < 8; j++) { 
    float[] p = f(90, j*(360/8)); 
    ellipse(p[0], p[1], r1, r1); 
  }
}