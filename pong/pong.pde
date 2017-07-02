int scoreP2, scoreP1;
boolean score;
int state = 2; //The current state
final int MAIN_MENU = 0;
final int GAME_MENU = 1;
final int GAME = 2;
final int PAUSE = 3;

PFont f;  //font for score
Puck ball = new Puck();
Players P1 = new Players(); //P1 is left
Players P2 = new Players(); // P2 is right
Field board = new Field();
Collision col = new Collision();
void setup() 
{
  size(640, 360); // size of playing field (0|0) is in top left
  surface.setResizable(true);
  frameRate(120); //fps
  f = createFont("Arial",36,true); // font for score
  board.startpositions();
  
}

void draw() 
{
  switch (state)
  {
    case MAIN_MENU:
      break;
    case GAME_MENU:
      break;
    case GAME:
      board.display();
      board.pressStart(); 
      ball.update();
      P1.update(); P1.xpos_stick = width*0.9;
      P2.update(); P2.xpos_stick = width*0.1;
      
      //check collision and controls
      ball.bordercollision();
      col.playercollision();
      col.controll();
        
      // Draw the shape
      ball.display();
      P1.display();
      P2.display();
      board.scoreboard();
      
      break;
      
    case PAUSE:
      break;
  }
  println(ball.xspeed, ball.yspeed);
  
}