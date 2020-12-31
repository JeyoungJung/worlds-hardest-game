void stageOne() {
  background(153, 153, 255);   
  movement();
  deathBar();
  collisionOne();
  hitOne();    
  stroke(0, 255);
  strokeWeight(5);
  rect(225, 225, 255, 255);
  
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++) {   

      if (gridOne[i][j] == 1) {
        fill(255);
      }
      else if (gridOne[i][j] == 2) {
        stroke(0, 255);
        fill(211, 211, 211);
      }
      else if (gridOne[i][j] == 3) {
        fill(50, 255, 80);
      }
      else if (gridOne[i][j] == 4) {
        fill(50, 255, 80);
      }
      noStroke();
      rect(i*rectSizeOne+125, j*rectSizeOne+125, rectSizeOne, rectSizeOne);              

      if (player.x > 100 && player.x < 350 && player.y > 100 && player.y < 350) {                    
        k = gridOne[(int)floor((player.x)/rectSizeOne-2)][(int)floor((player.y)/rectSizeOne-2)];  //The main code to convert x and y to 2d array
      }
      
      if(k == 4) {
        player.x = 70;
        player.y = 50;
        stage = 2;        
      }
    }
  }  
  stageOneCircles(); 
  fill(15, 15, 200);
  stroke(0, 255);
  strokeWeight(4);
  rect(player.x, player.y, player.z, player.z);
}