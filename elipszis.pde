float x_move = random(0-10);
float y_move = 11 - x_move;
int ball_x = 250;
int ball_y = 250;

void setup()
 {
 size(500, 500);
 }
 
void draw()
 {
 ball_x = ball_x + x_move;
 ball_y = ball_y + y_move;
 ellipse(ball_x, ball_y, 20, 20);
 }
