int player_y = 250;

void setup()
 {
 size(500, 500);
 }
 
 void draw() {
  background(200); 
  if (keyPressed) {
    if ( key == 'w' ) {
      player_y = player_y - 5;
    }
    if ( key == 's' ) {
      player_y = player_y + 5;
    }
  }
  fill(50, 50, 200);
  rect(10, player_y, 15, 100);
  
 }
