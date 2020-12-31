void collisionFour() {  // Checking Collision with the wall
  if (dir[0]) {
    if (gridFour[(int)floor((player.x+rad)/rectSizeFour-4.3)][(int)floor((player.y-rad)/rectSizeFour-2.6)] == 2 || 
      gridFour[(int)floor((player.x-rad)/rectSizeFour-4.3)][(int)floor((player.y-rad)/rectSizeFour-2.6)] == 2) {
      player.y += spd;
    }
  }  

  if (dir[1]) {
    if (gridFour[(int)floor((player.x+rad)/rectSizeFour-4.3)][(int)floor((player.y+rad)/rectSizeFour-2.6)] == 2 || 
      gridFour[(int)floor((player.x-rad)/rectSizeFour-4.3)][(int)floor((player.y+rad)/rectSizeFour-2.6)] == 2) {
      player.y -= spd;
    }
  }  

  if (dir[2]) {
    if (gridFour[(int)floor((player.x+rad)/rectSizeFour-4.3)][(int)floor((player.y-rad)/rectSizeFour-2.6)] == 2 || 
      gridFour[(int)floor((player.x+rad)/rectSizeFour-4.3)][(int)floor((player.y+rad)/rectSizeFour-2.6)] == 2) {
      player.x -= spd;
    }
  }  

  if (dir[3]) {
    if (gridFour[(int)floor((player.x-rad)/rectSizeFour-4.3)][(int)floor((player.y-rad)/rectSizeFour-2.6)] == 2 || 
      gridFour[(int)floor((player.x-rad)/rectSizeFour-4.3)][(int)floor((player.y+rad)/rectSizeFour-2.6)] == 2) {
      player.x += spd;
    }
  }
}

void hitFour() {  // The Hitbox
  for (i = 15; i < 19; i++) {
    if (PVector.dist(player, circles[i]) < 25) {
      player.x = 114;
      player.y = 112;
      deaths++;
      n = 0;
      coins[4] = new PVector(140, 180, 15);  
      coins[5] = new PVector(140, 330, 15);  
      coins[6] = new PVector(310, 180, 15);  
      coins[7] = new PVector(310, 330, 15);
    }
  }
  for (i=4; i<8; i++) {
    if (dist(player.x, player.y, coins[i].x, coins[i].y) < 15) {
      coins[i].x = 1000;
      coins[i].y = 1000;
      n++;
    }
  }
}

void stageFourCircles() { // The enemy Circles
  stroke(0, 255);
  strokeWeight(2);
  fill(255, 15, 15);

  ellipse(circles[15].x, circles[15].y, circles[15].z, circles[15].z);  
  circles[15].x += circleSpdFour*xDirFour[0];
  circles[15].y += circleSpdFour*yDirFour[0];
  if (circles[15].x < 137 || circles[15].x > 317) xDirFour[0] *= -1;
  if (circles[15].y < 98 || circles[15].y > 404) yDirFour[0] *= -1;

  ellipse(circles[16].x, circles[16].y, circles[16].z, circles[16].z);  
  circles[16].x += circleSpdFour*xDirFour[1];
  circles[16].y += circleSpdFour*yDirFour[1];
  if (circles[16].x < 137 || circles[16].x > 317) xDirFour[1] *= -1;
  if (circles[16].y < 98 || circles[16].y > 404) yDirFour[1] *= -1;

  ellipse(circles[17].x, circles[17].y, circles[17].z, circles[17].z);  
  circles[17].x += circleSpdFour*xDirFour[2];
  circles[17].y += circleSpdFour*yDirFour[2];
  if (circles[17].x < 137 || circles[17].x > 317) xDirFour[2] *= -1;
  if (circles[17].y < 98 || circles[17].y > 404) yDirFour[2] *= -1;

  ellipse(circles[18].x, circles[18].y, circles[18].z, circles[18].z);  
  circles[18].x += circleSpdFour*xDirFour[3];
  circles[18].y += circleSpdFour*yDirFour[3];
  if (circles[18].x < 137 || circles[18].x > 317) xDirFour[3] *= -1;
  if (circles[18].y < 98 || circles[18].y > 404) yDirFour[3] *= -1;
}

void stageFourCoins() {
  stroke(0);
  fill(242, 211, 14);
  ellipse(coins[4].x, coins[4].y, coins[0].z, coins[0].z);
  ellipse(coins[5].x, coins[5].y, coins[0].z, coins[0].z);
  ellipse(coins[6].x, coins[6].y, coins[0].z, coins[0].z);
  ellipse(coins[7].x, coins[7].y, coins[0].z, coins[0].z);
}