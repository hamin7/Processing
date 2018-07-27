int cx, cy, ca, cb;
float secondsRadius,secondsRadius1,minutesRadius,minutesRadius1,hoursRadius,hoursRadius1,clockDiameter,clockDiameter1;
void setup() {
  size(900, 400);
  stroke(255);
  
  int radius = min(880, 360) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  int radius1 = min(880, 360) / 2;
  secondsRadius1 = radius1 * 0.72;
  minutesRadius1 = radius1 * 0.60;
  hoursRadius1 = radius1 * 0.50;
  clockDiameter1 = radius1 * 1.8;
  cx = 880 / 4;
  cy = 360 / 2;
  ca = 880 / 3 * 2;
  cb = 360 / 2;}
void draw() {
  background(255);
  // Draw the clock background
  fill(150,24,60);
  stroke(180,180,180);
  ellipse(cx, cy, clockDiameter, clockDiameter);
  fill(20,48,100);
  stroke(180,180,180);
  ellipse(ca, cb, clockDiameter1, clockDiameter1);
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  float s1 = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m1 = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h1 = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI - HALF_PI - HALF_PI;
  // Draw the hands of the clock
  stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  stroke(255);
  strokeWeight(1);
  line(ca, cb, ca + cos(s1) * secondsRadius1, cb + sin(s1) * secondsRadius1);
  strokeWeight(2);
  line(ca, cb, ca + cos(m1) * minutesRadius1, cb + sin(m1) * minutesRadius1);
  strokeWeight(4);
  line(ca, cb, ca + cos(h1) * hoursRadius1, cb + sin(h1) * hoursRadius1);
  // Draw the minute ticks
  strokeWeight(6);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=30) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
    float angle1 = radians(a);
    float x1 = ca + cos(angle1) * secondsRadius1;
    float y1 = cb + sin(angle1) * secondsRadius1;
    vertex(x1, y1);}
    strokeWeight(3);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
    float angle1 = radians(a);
    float x1 = ca + cos(angle1) * secondsRadius1;
    float y1 = cb + sin(angle1) * secondsRadius1;
    vertex(x1, y1);}
  textSize(32);
text("SEOUL", 160, 380); 
fill(0, 102, 153);
text("MOSCOW", 570, 380);
fill(0, 102, 153, 51);
}
