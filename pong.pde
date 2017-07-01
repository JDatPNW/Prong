int scoreP2, scoreP1;
boolean start =true;
boolean score;

PFont f;  //font for score
Puck ball = new Puck();
Players P1 = new Players(); //P1 is left
Players P2 = new Players(); // P2 is right


void setup() 
{
  f = createFont("Arial",36,true); // font for score
  size(640, 360); // size of playing field (0|0) is in top left
  noStroke();
  frameRate(120); //fps
  ellipseMode(RADIUS); //sets calculations from mid
  rectMode(RADIUS); //same as above
  // Set the starting position of the shapes
  ball.xpos = width/2; 
  ball.ypos = height/2;
  P1.xpos_stick = 550;
  P1.ypos_stick = height/2;
  P2.xpos_stick = 90;
  P2.ypos_stick = height/2;
  
}

void draw() 
{
  background(102);
  stroke(255);
  line(width/2,0,width/2,360); //center line
  noFill();
  ellipse(width/2,height/2,35,35); //midcircle
  noStroke();
  fill(150);
  rect(0,0,25,height); // goal left
  fill(150);
  rect(width,0,25,height); //goal right

  

    if (start)  //start the game
  {
    ball.xpos = width/2; 
    ball.ypos = height/2;
      if (keyPressed && (keyCode == SHIFT || key == ' '))
      {
        start = false;
      }
  }
  

  
  
  ball.update();
  P1.update();
  P2.update();
  
  
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (ball.xpos > width-ball.rad || ball.xpos < ball.rad) {
    ball.xdirection *= -1;
  }
  if (ball.ypos > height-ball.rad || ball.ypos < ball.rad) {
    ball.ydirection *= -1;
  }
  
  //check if coliding with P1 stick, if so move left
  
  if ((ball.xpos+ball.rad >= P1.xpos_stick-5 && ball.xpos+ball.rad <= P1.xpos_stick+5)&& ball.ypos+ball.rad > P1.ypos_stick-P1.rad_stick && ball.ypos-ball.rad < P1.ypos_stick+P1.rad_stick)
    ball.xdirection = -1;
    
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
  
  
  //check if coliding with P2, if so move right
  if ((ball.xpos-ball.rad <= P2.xpos_stick+5 && ball.xpos-ball.rad >= P2.xpos_stick-5 ) && ball.ypos+ball.rad > P2.ypos_stick-P2.rad_stick && ball.ypos-ball.rad < P2.ypos_stick+P2.rad_stick)
      ball.xdirection = 1;
    
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
      if (keyPressed && (keyCode == SHIFT || key == ' '))
      {
        score = false;
      }
  }
  
  
  
  //println(P1.ypos_stick,ypos);
    
  // Draw the shape
  ball.display();
  P1.display();
  P2.display();
  textAlign(CENTER);  //following is score
  fill(#FFFFFF);
  textFont(f);
  text(scoreP2+":"+scoreP1,width/2,60); 
  
}