float x_move = 2;
float y_move = 2;

float ball_x = 250;
float ball_y = 250;

float player2_x  = 490;
float player2_y  = 250;
float player2_y2  = 0;

float player_x = 0;
float player_y = 250;
float player_y2 = 0;

void setup()
 {
 size(500, 500);
 }
 
void draw()
 {
 background(200);
 //player2_y  = mouseY;
 player2_y2 = player2_y + 50;
 player_y2 = player_y + 50;
 
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
 rect(player2_x, player2_y, 10, 50);
 
 fill(200, 50, 50);
 rect(player_x, player_y, 10, 50);
 
 ball_x = ball_x + x_move;
 ball_y = ball_y + y_move;
 
  if ( ball_x == 480 ) 
    {
    if ( ball_y >= player2_y && ball_y <= player2_y2 )
      {
      x_move = -x_move;
      } 
    }
 
 if ( ball_y == 0 )
 {
  y_move = 1; 
 }
 
 if ( ball_y == 500 )
 {
  y_move = -1; 
 }
 
 if ( ball_x == 20 ) 
 {
  if ( ball_y >= player_y && ball_y <= player_y2 )
      {
      x_move = -x_move;
      }   
 }

 fill(50, 50, 50);
 ellipse(ball_x, ball_y, 20, 20);
 
 
 
 
 
 }
