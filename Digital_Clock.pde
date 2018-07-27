void setup()
{
  size(360,200);
}

void draw()
{
  background(0,120,220);
  stroke(160);
  
  int s = second();
  int m = minute();
  int h = hour();
  String ampm;
  
  if(h>11)
  {
    h=h-12;
    ampm="pm";
  }
  else
  {
    ampm="am";
  }
  
  textSize(45);
  fill(255);
  text(h+"."+m+"."+s+"  "+ampm,55,105);
}
