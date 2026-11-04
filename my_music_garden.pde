
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
  for( int s = 0; s < songs.getRowCount(); s++ ) //Counts rows in the file, once s = row count the loop will break
  {
  //Make program read the csv file
    String song = songs.getString (s, "Song") ; 
    String ganre = songs.getString(s, "Ganre") ;
    String topic = songs.getString(s, "Topic") ;
    String time = songs.getString(s, "Time") ;
    
   //Check the topic and colour, goes throw each of the statement 
  
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

  //Starting points according to x-axis and y-axis
float x = 90;
float y = 90;

if (time.equals ("Day")) {
  // Secure the place for each shape to avoid overlaping, ensures positioning according to the time area and x y
  x = 90 + (s%5)* 70; //Shapes are located on the left
  y = 90 + (s/5) * 70;
  }

else if (time.equals ("Night")) {
  // Move shape on the right 
  x = 510 + (s%5) * 70; //Finding reminder will help to locate shapes in a rows of 5 songs each
  y = 90 + (s/5) * 70; 
}

//Check the ganre for the shape
//Draws a circle around coordinates, x = 90 and y = 90
if (ganre.equals ("Pop")) {
  ellipse(x, y, 40, 40) ;
}
else if (ganre.equals ("Rock")){
rect( x - 20, y - 20, 40, 40) ;
}
// Draw a triangle according to the points 
else if (ganre.equals( "Electronic")) {
  triangle(x, y - 20, x - 20, y + 20, x + 20, y + 20);
}
//Draws any quad according to the coordinates given
else if (ganre.equals("R&B")) {
  quad(x, y - 20, x + 20, y, x, y + 20, x - 20, y) ;
}
 } 
  } 
  

