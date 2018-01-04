int x = 0;   //declare that x is integer and initial value is 0 
int y = 0;  //declare that y is integer and initial value is 0 

void setup() {
 size (500,500);   //set canvas size
}

void draw() {
  fill(y);
noStroke();  //does not outline each rectangle.   Try with this and without this.
 rect(x, 0, 5, 500);  //displace the rectangle each time by 5 units with starting x coordinate as 0
   x=x+5;
   y=y+1; 
   fill(56);
   translate(300,300);
   rect(-250,-50, 400, 50);
}   