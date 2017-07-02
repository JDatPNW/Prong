class Puck
{
  int rad;        // Width of the shape
  float xpos, ypos;    // Starting position of shape    
  
  float default_xspeed=3.8;
  float default_yspeed = 3.0;
  float xspeed = default_xspeed;  // Speed of the shape
  float yspeed = default_yspeed;  // Speed of the shape
  
  
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
    rad  = height/15;
    stroke(#ff0120);
    fill(#ff0120,40);
    ellipse(xpos, ypos, rad, rad); // rendering puck
  }
  
  
   // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  void bordercollision()
  {
    if (xpos > width-rad || xpos < rad) 
    {
      xdirection *= -1;
    }
    if (ypos > height-rad || ypos < rad) 
    {
      ydirection *= -1;
    }
  }
  
}