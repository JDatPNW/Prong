int scoreP2, scoreP1;
boolean score;

PFont f;  //font for score
Puck ball = new Puck();
Players P1 = new Players(); //P1 is left
Players P2 = new Players(); // P2 is right
Field board = new Field();
Collision col = new Collision();
void setup() 
{
  size(640, 360); // size of playing field (0|0) is in top left
  frameRate(120); //fps
  f = createFont("Arial",36,true); // font for score
  board.startpositions();
  
}

void draw() 
{
  
  board.display();
  board.pressStart(); 
  ball.update();
  P1.update();
  P2.update();
  
  //check collision and controls
  ball.bordercollision();
  col.playercollision();
  col.controll();
    
  // Draw the shape
  ball.display();
  P1.display();
  P2.display();
  board.scoreboard();
  
}