float triangleSide;
int depth;
int c = 0;
int dir = 1;
void setup(){
  colorMode(HSB,400);
  background(0,0,0);
  size(400,400);
  drawSierpinski(0,400,400);
}
void draw(){
  c+= dir;
  fill(c,400,400);
  stroke(c,400,400);
  drawSierpinski(0,400,400);
  if(c == 400 || c==0){
    dir *= -1;
  }
}
void mouseClicked(){
  
}
public void drawSierpinski(int x, int y, int l){
  int len = l;
  if(len <= 20){
    drawTriangle(x,y,l);
  } else {
    drawSierpinski(x,y,len/2);
    drawSierpinski(x+len/2,y,len/2);
    drawSierpinski(x+len/4,y-len/2,len/2);
  }
}
public void drawTriangle(float x, float y, float size){
  triangle(x,y,x + size, y, x + (size/2), y - (float)Math.sqrt(3)/2 * size);
}
