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
  int r1 = 100; 
  int r2 = 250; 
  float[][] tri1 = new float[3][];
  float[][] tri2 = new float[3][];
  
  translate(500, 500); 
  for(int j = 0; j < 3; j++) { 
    float[] p = f(r2, j*120-30);  
    fill(0);
    ellipse(p[0], p[1], r1, r1);
    tri2[j] = p;
  }
  for (int j = 0; j < 3; j++) { 
    tri1[j] = f(r2, j*120+30); 
  }
  fill(255); 
  stroke(0);
  strokeWeight(6);
  triangle(tri1[0][0], tri1[0][1], tri1[1][0], tri1[1][1], tri1[2][0], tri1[2][1]);
  noStroke(); // Create negative triangle in background color using tri2 coordinates
  fill(255);
  triangle(tri2[0][0], tri2[0][1], tri2[1][0], tri2[1][1], tri2[2][0], tri2[2][1]);
}