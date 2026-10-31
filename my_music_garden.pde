
Table songs;

void setup() {
  size( 900, 700 ) ;
  
  songs = loadTable("songs1.csv", "header") ;
  println("File loaded!") ;
  println(songs.getRowCount()) ;
  println(songs.getString(0, "Song")) ;
}

void draw() {
  background(#FFF9F2) ;
  
  fill(#FCE8C8);
  rect(0, 10, 490, 670) ;
  
  fill(#DCE3F5) ;
  rect(445, 10, 490, 670) ;
  noStroke() ;
}
