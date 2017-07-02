class Puck
{
  int rad;        // Width of the shape
  float xpos, ypos;    // Starting position of shape    
  
  float default_xspeed;
  float default_yspeed;
  float xspeed; // Speed of the shape
  float yspeed;  // Speed of the shape
  
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom
  
  void setup()
  {
  default_xspeed = width/200;
  default_yspeed = height/125;
  xspeed = default_xspeed;  // Speed of the shape
  yspeed = default_yspeed;  // Speed of the shape
  }
  
  void update()
  {
    default_xspeed = width/200;
    default_yspeed = height/125;
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