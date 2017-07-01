class Puck
{
  int rad = 25;        // Width of the shape
  float xpos, ypos;    // Starting position of shape    
  
  float xspeed = 2.8;  // Speed of the shape
  float yspeed = 2.2;  // Speed of the shape
  
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom
  
  void update()
  {
      // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  }
  void display()
  {
    fill(#ff0120);
    ellipse(xpos, ypos, rad, rad); // rendering puck
  }
  
}