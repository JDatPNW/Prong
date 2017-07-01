class Players
{
  float xpos_stick, ypos_stick; //Starting pos of stick
  int xdir_stick = 0;  // x dir of sticks it stays 0
  int ydir_stick = 0; // y dir of sticks is 1(down) or -1 (up)
  float xspd_stick = 0; // x speed of sticks stays 0
  float yspd_stick = 3.5; // y speed of sticks, positive is down negative is up
  int rad_stick = 55; // half of the height of the stick
  int asd = 2;
  
  
  void display()
  {
    fill(#0000FF);
    rect(xpos_stick,ypos_stick,10,rad_stick); //render P2 stick
  }
  
  void update()
  {
    //update position player 1 stick
    xpos_stick = xpos_stick + (xspd_stick * xdir_stick);
    ypos_stick = constrain(ypos_stick + (yspd_stick * ydir_stick),rad_stick,height-rad_stick); //constrain sets borders
  }
  

}