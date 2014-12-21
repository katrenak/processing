float x_move = random(2,4);
float y_move = 4-x_move;

float ball_x = 250;
float ball_y = 250;

float player2_x  = 490;
float player2_y  = 250;
float player2_y2  = 0;

float player_x = 0;
float player_y = 250;
float player_y2 = 0;

float player_size = 100;

int pattanas_db = 0;

void setup()
 {
 size(500, 500);
 }
 
void draw()
 {
 background(200);
 player2_y2 = player2_y + player_size;
 player_y2 = player_y + player_size;
 
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
 
 fill(50, 50, 200);
 rect(player2_x, player2_y, 10, player_size);
 
 fill(200, 50, 50);
 rect(player_x, player_y, 10, player_size);
 
 if ( pattanas_db >= 70 )
 {
   player_size = 130;
 }
 
 ball_x = ball_x + x_move;
 ball_y = ball_y + y_move;
 
  if ( ball_x >= 480 && ball_x < 500 ) 
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
 
 if ( ball_x <= 20 && ball_x > 0 ) 
 {
  if ( ball_y >= player_y && ball_y <= player_y2 )
      {
       x_move = x_move-0.1;
       x_move = -x_move;
       pattanas_db = pattanas_db + 1;
      }   
 }
 
 text(pattanas_db, 250, 10);
 
 if ( ball_x < 0 ) {
   text("Game Over", 250, 250);
 }
 
 if ( ball_x > 500 ) {
   text("Game Over", 250, 250);
   
 }

 fill(50, 50, 50);
 ellipse(ball_x, ball_y, 20, 20);
 }
