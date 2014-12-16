int ellipse_x = 12;
int ellipse_y = 100;
int ellipse_i = 2;

int player1_x = 0;
int player1_y = 100;

int player2_x  = 190;
int player2_y  = 100;
int player2_y2 = 0;

void setup() 
  {
  size(200, 200);
  }


void draw() 
  {
  background(200);
  
  //player1_y = ; 
  player2_y = mouseY;
  player2_y2 = player2_y + 50;
  
  fill(50, 50, 200);
  rect(player2_x, player2_y, 15, 50);
  
  ellipse_x = ellipse_x + ellipse_i;
  
  if ( ellipse_x == 178 ) 
    {
    if ( ellipse_y >= player2_y && ellipse_y <= player2_y2 )
      {
      ellipse_i = -2;
      }
    }
  
  if ( ellipse_x > 220 )  ellipse_x =  12;
  if ( ellipse_x == 12 )  ellipse_i =  2;
  
  fill(200, 50, 50);
  ellipse(ellipse_x, ellipse_y, 25, 25);
  
  }
