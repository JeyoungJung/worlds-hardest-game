void stageFour() {
  background(153, 153, 255);   
  movement();
  deathBar();
  collisionFour(); 
  hitFour();
  for (i=0; i<14; i++) {
    for (j=0; j<20; j++) {   
      if (gridFour[i][j] == 1) {
        fill(255);
      } else if (gridFour[i][j] == 2) {
        fill(10, 10, 10);
      } else if (gridFour[i][j] == 3) {
        fill(50, 255, 80);
      } else if (gridFour[i][j] == 4) {
        fill(50, 255, 80);
      } else if (gridFour[i][j] == 5) {
        fill(153, 153, 255);
      }
      noStroke();
      rect(i*rectSizeFour+95, j*rectSizeFour+62, rectSizeFour, rectSizeFour);        

      k = gridFour[(int)floor((player.x)/rectSizeFour-4.3)][(int)floor((player.y)/rectSizeFour-2.6)];
      
      if (k == 4 && n == 4) { 
        state = 4;
      }
    }
  }  
  stageFourCircles();
  stageFourCoins();
  fill(15, 15, 200);
  stroke(0, 255);
  strokeWeight(4);
  rect(player.x, player.y, player.z, player.z);
}