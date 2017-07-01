class Field
{
  void display()
  {
    ellipseMode(RADIUS); //sets calculations from mid
    rectMode(RADIUS); //same as above
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
  }
  
  void scoreboard(int scoreP2, int scoreP1)
  {
  textAlign(CENTER);  //following is score
  fill(#FFFFFF);
  textFont(f);
  text(scoreP2+":"+scoreP1,width/2,60); }
}