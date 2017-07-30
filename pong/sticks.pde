class Players
{
  float xpos_stick, ypos_stick; //Starting pos of stick
  int xdir_stick = 0;  // x dir of sticks it stays 0
  int ydir_stick = 0; // y dir of sticks is 1(down) or -1 (up)
  float xspd_stick = 0; // x speed of sticks stays 0
  float yspd_stick = 3.5; // y speed of sticks, positive is down negative is up
  int height_stick = height/6; // half of the height of the stick
  int width_stick = width/60; // width of stick
  int blink = 2;
  boolean impact;
  char up;
  char down;
  
  void setup()
  {
    P1.yspd_stick = height/100; 
    P2.yspd_stick = height/100;
  }
  
  void display()
  {
    rectMode(RADIUS); //same as above
    height_stick = height/6; // half of the height of the stick
    width_stick = width/60;
    stroke(#0000FF);
    if (impact)
    {
      fill(#0000FF);
      blink++;
      if(blink == 3)
      {
        impact = false;
        blink=0;
      }
    }
    else
    fill(#0000FF,40);
    rect(xpos_stick,ypos_stick,width_stick,height_stick); //render P2 stick
  }
  
  void update()
  {
    //update position player 1 stick
    P1.yspd_stick = height/100; P2.yspd_stick = height/100;
    xpos_stick = xpos_stick + (xspd_stick * xdir_stick);
    ypos_stick = constrain(ypos_stick + (yspd_stick * ydir_stick),height_stick,height-height_stick); //constrain sets borders
  }

    
  void controll()
  {
    
    if(!keyPressed)    // if no key, dont move
      this.ydir_stick=0;
    if (keyPressed && key == this.up) //if up, move up
      {
        this.ydir_stick = -1;
      }
    else if (keyPressed && key == this.down) //if down move down
      {
        this.ydir_stick = 1;
      }
    
    if (keyPressed && keyCode == RIGHT)
      delay (150);
      
    if (key == 'p')  
      state = PAUSE;
  }

}