  int s_t = 100;
  int m_t = 100;
  int h_t = 100;

  int s_tt = 0;

  int m = 0; // minute();  // Values from 0 - 59
  int h = 0; //hour();    // Values from 0 - 23

void setup() {
  // Beállítjuk az ablak méretét és az anti-aliasing-ot
  size(200, 200);
  smooth();
  // Beállítjuk a tinta színét, a betűtípust és a szöveg igazítását
  fill(0);  // Fekete
  // Állítsuk be a betűtípust (az alapértelmezett a Sans Serif)
  textFont(createFont("SansSerif",18));
  textAlign(CENTER);
  //noLoop();  // a draw() metódus csak egyszer fut le
  

}
 
void draw() {
  background(204);
  int s = second();  // Values from 0 - 59
  String time = "";

  if ( s_t == 100 ) { 
    s_t = s;
    m_t = m;
    h_t = h;
  }
 
 s = s - s_t; if ( s < 0 ) s = s + 60;
 //m = m - m_t; if ( m < 0 ) m = m + 60;
 //h = h - h_t; if ( h < 0 ) h = h + 24;
 
// println( s, s_tt );
 
 if ( s != s_tt ) 
   {
   s_tt = s;
   if ( s == 0 ) m = m + 1;
   }
   
  time = h + ":" + m + ":" + s; 
  // Rajzoljuk ki a szöveget az előbb beállított betűtípussal és színnel az ablak közepére
  text(time, width/2, height/2);
  //text(m, 50, height/2);
  //text(s, 100, height/2);
}
