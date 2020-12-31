void stageTwo() {  
  background(153, 153, 255);  
  strokeWeight(13);
  rect(225, 247, 350, 350);  
  movement();
  deathBar();
  collisionTwo();
  hitTwo();  
   
  for (i=0; i<10; i++) {    
    for (j=0; j<10; j++) {   
      if (gridTwo[i][j] == 1) {       
        fill(255);
      }
      else if (gridTwo[i][j] == 2) {
        fill(211, 211, 211);
      }
      else if (gridTwo[i][j] == 3) {
        fill(50, 255, 80);
      }
      else if (gridTwo[i][j] == 4) {
        fill(50, 255, 80);
      }
      
      noStroke();
      rect(i*rectSizeTwo+67.5, j*rectSizeTwo+90, rectSizeTwo, rectSizeTwo+1);        
      
      k = gridTwo[(int)floor((player.x)/rectSizeTwo-1.4)][(int)floor((player.y)/rectSizeTwo-2)];

      if (k == 4){ 
        stage = 3;
        player.x = 225;
        player.y = 100;
      }
    }
  }  
  stageTwoCircles();
  fill(15, 15, 200);
  stroke(0, 255);
  strokeWeight(4);
  rect(player.x, player.y, player.z+3, player.z+3);
}