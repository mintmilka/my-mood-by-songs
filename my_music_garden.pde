
Table songs;

void setup() {
  size( 900, 700 ) ;
  
  songs = loadTable("songs1.csv", "header") ;
  for( int s = 0; s < songs.getRowCount(); s++ ) {
  
    String song = songs.getString (s, "Song") ;
    String ganre = songs.getString(s, "Ganre") ;
    String topic = songs.getString(s, "Topic") ;
    String time = songs.getString(s, "Time") ;
    
    println(song);
    println(ganre);
    println(topic);
    println(time);
  }
  
}

void draw() {
  background(#FFF9F2) ;
  
  fill(#FCE8C8);
  rect(0, 10, 490, 670) ;
  
  fill(#DCE3F5) ;
  rect(445, 10, 490, 670) ;
  noStroke() ;
}
