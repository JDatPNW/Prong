class Collision
{
  
  
  void playercollision()
  {
      //check if coliding with P1 stick, if so move left
    
    if ((ball.xpos+ball.rad >= P1.xpos_stick-(P1.width_stick) && ball.xpos+ball.rad <= P1.xpos_stick+(P1.width_stick))&& ball.ypos+ball.rad > P1.ypos_stick-P1.height_stick && ball.ypos-ball.rad < P1.ypos_stick+P1.height_stick)
       {
        ball.xdirection = -1;
        ball.xspeed *= 1.05;  //increase x speed upon contact
        ball.yspeed += (P1.yspd_stick*0.1 * (ball.ydirection*P1.ydir_stick)); //in or decrease y speed depending on direction of stick
        P1.impact = true;
       }       
    //check if coliding with P2, if so move right
    if ((ball.xpos-ball.rad <= P2.xpos_stick+(P2.width_stick) && ball.xpos-ball.rad >= P2.xpos_stick-(P2.width_stick) ) && ball.ypos+ball.rad > P2.ypos_stick-P2.height_stick && ball.ypos-ball.rad < P2.ypos_stick+P2.height_stick)
       {
        ball.xdirection = 1;        
        ball.xspeed *= 1.05;
        ball.yspeed += (P2.yspd_stick*0.1 * (ball.ydirection*P2.ydir_stick));
        P2.impact = true;
       }
  }
  
}