class Field
{
  boolean start =true;
  int scoreP2;
  int scoreP1;
  void display()
  {
    ellipseMode(RADIUS); //sets calculations from mid
    rectMode(RADIUS); //same as above
    background(102);
    stroke(255);
    line(width/2,0,width/2,height); //center line
    noFill();
    ellipse(width/2,height/2,height/10,height/10); //midcircle
    noStroke();
    fill(150);
    rect(0,0,width/30,height); // goal left
    fill(150);
    rect(width,0,width/30,height); //goal right
  }
  
  // Set the starting position of the shapes
  void startpositions() //could be somewhere else too
  {
    ball.xpos = width/2; 
    ball.ypos = height/2;
    P1.xpos_stick = width*0.9;
    P1.ypos_stick = height/2;
    P2.xpos_stick = width*0.1;
    P2.ypos_stick = height/2;
  }
  
  void pressStart()
  {
    if (start)  //start the game
    {
      ball.xpos = width/2; 
      ball.ypos = height/2;
        if (keyPressed && (keyCode == SHIFT || key == ' '))
        {
          start = false;
        }
     }
  }
  
  
  void scoreboard()
    {
      if (ball.xpos-ball.rad <=1) //check for goal by p1
        {
          scoreP1++;
          score = true;
        }
      
      if (ball.xpos+ball.rad >=width-1) // check for goal by p2
      {
        scoreP2++;
        score = true;
      }
    
      if (score)  //reset the puck
      {
        ball.xpos = width/2; 
        ball.ypos = height/2;
        ball.xspeed = ball.default_xspeed;
        ball.yspeed = ball.default_yspeed;
        if (keyPressed && (keyCode == SHIFT || key == ' '))
        {
          score = false;
        }
    }
    
  textAlign(CENTER);  //following is score
  fill(#FFFFFF);
  textFont(f,height/10);
  text(scoreP2+":"+scoreP1,width/2,height/10); }
}