void collisionThree() {  //Checking Collision with the wall
  if (dir[0]) {
    if (gridThree[(int)floor((player.x+rad)/rectSizeThree-1.3)][(int)floor((player.y-rad)/rectSizeThree-2.6)] == 2 || 
      gridThree[(int)floor((player.x-rad)/rectSizeThree-1.3)][(int)floor((player.y-rad)/rectSizeThree-2.6)] == 2) {
      player.y += spd;
    }
  }  

  if (dir[1]) {
    if (gridThree[(int)floor((player.x+rad)/rectSizeThree-1.3)][(int)floor((player.y+rad)/rectSizeThree-2.6)] == 2 || 
      gridThree[(int)floor((player.x-rad)/rectSizeThree-1.3)][(int)floor((player.y+rad)/rectSizeThree-2.6)] == 2) {
      player.y -= spd;
    }
  }  

  if (dir[2]) {
    if (gridThree[(int)floor((player.x+rad)/rectSizeThree-1.3)][(int)floor((player.y-rad)/rectSizeThree-2.6)] == 2 || 
      gridThree[(int)floor((player.x+rad)/rectSizeThree-1.3)][(int)floor((player.y+rad)/rectSizeThree-2.6)] == 2) {
      player.x -= spd;
    }
  }  

  if (dir[3]) {
    if (gridThree[(int)floor((player.x-rad)/rectSizeThree-1.3)][(int)floor((player.y-rad)/rectSizeThree-2.6)] == 2 || 
      gridThree[(int)floor((player.x-rad)/rectSizeThree-1.3)][(int)floor((player.y+rad)/rectSizeThree-2.6)] == 2) {
      player.x += spd;
    }
  }
}

void hitThree() {  // The Hitbox
  for (i = 9; i < 15; i++) {
    if (PVector.dist(player, circles[i]) < 20) {
      player.x = 225;
      player.y = 100;
      deaths++;
      n = 0;
      coins[0] = new PVector(120, 150, 15);  
      coins[1] = new PVector(330, 150, 15);  
      coins[2] = new PVector(120, 360, 15);  
      coins[3] = new PVector(330, 360, 15);
    }
  }
  for (i=0; i<4; i++) {
    if (dist(player.x, player.y, coins[i].x, coins[i].y) < 15) {
      coins[i].x = 1000;
      coins[i].y = 1000;
      n++;
    }
  }
}

void stageThreeCircles() {  // The enemy Circles
  stroke(0, 255);
  strokeWeight(2);
  fill(255, 15, 15);

  ellipse(circles[9].x, circles[9].y, circles[9].z, circles[9].z);  
  circles[9].x += circleSpdThree*xDirThree[0];
  if (circles[9].x < 114 || circles[9].x > 338) xDirThree[0] *= -1;

  ellipse(circles[10].x, circles[10].y, circles[10].z, circles[10].z); 
  circles[10].x += circleSpdThree*xDirThree[1];
  if (circles[10].x < 114 || circles[10].x > 338) xDirThree[1] *= -1;

  ellipse(circles[11].x, circles[11].y, circles[11].z, circles[11].z);  
  circles[11].x += circleSpdThree*xDirThree[2];
  if (circles[11].x < 114 || circles[11].x > 338) xDirThree[2] *= -1;

  ellipse(circles[12].x, circles[12].y, circles[12].z, circles[12].z);  
  circles[12].x += circleSpdThree*xDirThree[3];
  if (circles[12].x < 114 || circles[12].x > 338) xDirThree[3] *= -1;

  ellipse(circles[13].x, circles[13].y, circles[13].z, circles[13].z);  
  circles[13].x += circleSpdThree*xDirThree[4];
  if (circles[13].x < 114 || circles[13].x > 338) xDirThree[4] *= -1;

  ellipse(circles[14].x, circles[14].y, circles[14].z, circles[14].z);  
  circles[14].x += circleSpdThree*xDirThree[5];
  if (circles[14].x < 114 || circles[14].x > 338) xDirThree[5] *= -1;
}

void stageThreeCoins() {  // Coins to collect 
  stroke(0);
  fill(242, 211, 14);
  ellipse(coins[0].x, coins[0].y, coins[0].z, coins[0].z);
  ellipse(coins[1].x, coins[1].y, coins[0].z, coins[0].z);
  ellipse(coins[2].x, coins[2].y, coins[0].z, coins[0].z);
  ellipse(coins[3].x, coins[3].y, coins[0].z, coins[0].z);
}
