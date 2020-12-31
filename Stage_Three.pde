void stageThree() {
  background(153, 153, 255);   
  movement();
  deathBar();
  collisionThree();
  hitThree();
  
  for (i=0; i<20; i++) {
    for (j=0; j<20; j++) {   
      if (gridThree[i][j] == 1) { 
        fill(255);
      }
      else if (gridThree[i][j] == 2) {
        fill(10, 10, 10);
      }
      else if (gridThree[i][j] == 3) {
        fill(50, 255, 80);
      }
      else if (gridThree[i][j] == 4) {
        fill(50, 255, 80);
      }
      else if (gridThree[i][j] == 5) {
        fill(153, 153, 255);
      }
      noStroke();
      rect(i*rectSizeThree+35, j*rectSizeThree+62, rectSizeThree, rectSizeThree);        

      k = gridThree[(int)floor((player.x)/rectSizeThree-1.3)][(int)floor((player.y)/rectSizeThree-2.6)];

      if (k == 4 && n==4) { 
        n = 0;
        stage = 4;
        player.x = 114;
        player.y = 112;
      }
    }    
  }  
  stageThreeCircles();
  stageThreeCoins();
  
  fill(15, 15, 200);
  stroke(0, 255);
  strokeWeight(4);
  rect(player.x, player.y, player.z, player.z);
}
