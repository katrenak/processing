float x_move;
float y_move;

float ball_x;
float ball_y;

float player2_x;
float player2_y;
float player2_y2;

float player_x;
float player_y;
float player_y2;

int pattanas_db;

int indit;

PImage photo;

void setup()
{
  photo = loadImage("start.jpg");
  size(500, 500);
  nullazas();
}

void draw()
{
  if (keyPressed) {
    if (key == ' ' ) {
nullazas();
    }
  }

  if (mousePressed) {
    indit = 1;
  }

background(200);
player2_y2 = player2_y + 100;
player_y2 = player_y + 100;

if (keyPressed) {
   if ( key == 'w' ) {
     player_y = player_y - 5;
   }
   if ( key == 's' ) {
     player_y = player_y + 5;
   }
 }

if (keyPressed) {
   if ( key == CODED ) {
     if ( keyCode == UP ) {
     player2_y = player2_y - 5;
   }
   if ( keyCode == DOWN ) {
     player2_y = player2_y + 5;
   }
 }}

if (indit != 0) {
 ball_x = ball_x + x_move;
 ball_y = ball_y + y_move;
 
 fill(50, 50, 50);
 ellipse(ball_x, ball_y, 20, 20);
 
 fill(50, 50, 200);
 rect(player2_x, player2_y, 10, 100);

 fill(200, 50, 50);
 rect(player_x, player_y, 10, 100);
}
else
{
  background(255, 255, 255);
  image(photo, 73, 179);
  fill(0);
  text("Irányítás:", 230, 350);
  text("1-es játékos: w és s", 210, 365);
  text("1-es játékos: felfelé nyíl és lefelé nyíl", 160, 380);
}

 if ( ball_x >= 480 && ball_x < 500) 
   {
   if ( ball_y >= player2_y && ball_y <= player2_y2 )
     {
     x_move = x_move+0.1;
     x_move = -x_move;
     pattanas_db = pattanas_db + 1;
     } 
   }

if ( ball_y <= 0 )
 {
  y_move = -y_move; 
 }

if ( ball_y >= 500 )
 {
  y_move = -y_move; 
 }

if ( ball_x <= 20 && ball_x > 0) 
{
 if ( ball_y >= player_y && ball_y <= player_y2 )
     {
      x_move = x_move+0.1;
      x_move = -x_move;
      pattanas_db = pattanas_db + 1;
     }   
}

text(pattanas_db, 250, 10);

if ( ball_x < 0 ) {
  fill(50, 50, 200);
  text("A KÉK NYERT!", 250, 250);
  fill(0);
  text("Nyomd meg a space-t az újrkezdéshez", 180, 230);
}

if ( ball_x > 500 ) {
  fill(200, 50, 50);
  text("A PIROS NYERT!", 250, 250);
  fill(0);
  text("Nyomd meg a space-t az újrkezdéshez", 180, 230);
}
}

void nullazas()
{
 x_move = random(2,4);
 y_move = 5-x_move;

 ball_x = 250;
 ball_y = 250;

 player2_x  = 490;
 player2_y  = 250;
 player2_y2  = 0;

 player_x = 0;
 player_y = 250;
 player_y2 = 0;

 pattanas_db = 0;

 indit = 0;
}
