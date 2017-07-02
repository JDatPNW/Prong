int scoreP2, scoreP1;
boolean score;
int state = 0; //The current state
final int MAIN_MENU = 0;
final int GAME_MENU = 1;
final int GAME = 2;
final int PAUSE = 3;

PFont f;  //font for score
PImage img;
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
  f = createFont("Arial",height/10,true); // font for score
  img = loadImage("../logo/Prong.png");
  board.startpositions();
  imageMode(CENTER);
}

void draw() 
{
  switch (state)
  {
    case MAIN_MENU:
      background(25);
      image(img,width/2,height/2,width/3,width/3);
      textAlign(CENTER);  //following is score
      fill(#FFFFF0);
      textFont(f,height/17);
      text("Press SPACE to begin",width/2,height*0.85);
      if (key == ' ')
        state = GAME;
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
      fill(25,35);
      rect(0,0,width,height);
      image(img,width/2,height/2,width/3,width/3);
      textAlign(CENTER);  //following is score
      fill(#FFFFF0);
      textFont(f,height/17);
      text("Press SPACE to continue",width/2,height*0.85);
      if (key == ' ')
        state = GAME;
      break;
  }
  println(ball.xspeed, ball.yspeed);
  
}