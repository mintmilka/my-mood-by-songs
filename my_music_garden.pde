
Table songs;

void setup() {
  size( 900, 700 ) ;
//loading excel file sheet
  songs = loadTable("songs.csv", "header") ;
}

// Separate the screen for night and day areas using spesific colors, with no boarders
  void draw() 
  
  fill(255, 252, 235);
  rect(0, 10, 490, 670) ;
  
  fill(25, 35, 65) ;
  rect(445, 10, 490, 670) ;
  noStroke() ;
  
//Using for loop to count the row remaining for the csv reading
  for( int s = 0; s < songs.getRowCount(); s++ )
  {
  //Make program read the csv file
    String song = songs.getString (s, "Song") ;
    String ganre = songs.getString(s, "Ganre") ;
    String topic = songs.getString(s, "Topic") ;
    String time = songs.getString(s, "Time") ;
    
   //Check the topic and colour 
  
    if (topic.equals ("Sadness")) {
     fill(190, 215, 235);
    }
    else if (topic.equals ("Love")) {
     fill(170, 75, 95) ;
    }
    else if (topic.equals ("Motivation")) {
    fill(232, 220, 200) ;
    }
    else if (topic.equals ("Energetic")) {
    fill (245, 190, 205) ;
    }
    // If the topic is not regognised
   else {
     fill(0,0,0);
   }
  
