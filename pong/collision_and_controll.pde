class Collision
{
  
  
  void playercollision()
  {
      //check if coliding with P1 stick, if so move left
    
    if ((ball.xpos+ball.rad >= P1.xpos_stick-5 && ball.xpos+ball.rad <= P1.xpos_stick+5)&& ball.ypos+ball.rad > P1.ypos_stick-P1.rad_stick && ball.ypos-ball.rad < P1.ypos_stick+P1.rad_stick)
      ball.xdirection = -1;
        
    //check if coliding with P2, if so move right
    if ((ball.xpos-ball.rad <= P2.xpos_stick+5 && ball.xpos-ball.rad >= P2.xpos_stick-5 ) && ball.ypos+ball.rad > P2.ypos_stick-P2.rad_stick && ball.ypos-ball.rad < P2.ypos_stick+P2.rad_stick)
        ball.xdirection = 1;
  }
  
  
  
  void controll()
  {
    
    if(!keyPressed)    // if no key, dont move
      P1.ydir_stick=0;
    if (keyPressed && keyCode==UP) //if up, move up
      {
        P1.ydir_stick = -1;
      }
    else if (keyPressed && keyCode==DOWN) //if down move down
      {
        P1.ydir_stick = 1;
      }
    
    
    if(!keyPressed) //if no key dont move
      P2.ydir_stick=0;
    if (keyPressed && key == 'w') //if pressing w move up
      {
        P2.ydir_stick = -1;
      }
    else if (keyPressed && key == 's') // pressing s move down
      {
        P2.ydir_stick = 1;
      }
  }
}