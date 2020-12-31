void collisionTwo() {  //Checking Collision with the wall
  if (player.x < 51+rad+3) player.x = 51+rad+3;
  if (player.x > 399-rad-3) player.x = 399-rad-3;
  if (player.y < 73+rad+3) player.y = 73+rad+3;
  if (player.y > 421-rad-3) player.y = 421-rad-3;

  if (player.x > 60 && player.x < 390 && player.y > 82 && player.y < 412) {
    if (dir[0]) {
      if (gridTwo[(int)floor((player.x+rad)/rectSizeTwo-1.4)][(int)floor((player.y-rad)/rectSizeTwo-2.11)] == 2 || 
        gridTwo[(int)floor((player.x-rad)/rectSizeTwo-1.4)][(int)floor((player.y-rad)/rectSizeTwo-2.11)] == 2) {
        player.y += spd;
      }
    }  

    if (dir[1]) {
      if (gridTwo[(int)floor((player.x+rad)/rectSizeTwo-1.4)][(int)floor((player.y+rad)/rectSizeTwo-2)] == 2 || 
        gridTwo[(int)floor((player.x-rad)/rectSizeTwo-1.4)][(int)floor((player.y+rad)/rectSizeTwo-2)] == 2) {
        player.y -= spd;
      }
    }  

    if (dir[2]) {
      if (gridTwo[(int)floor((player.x+rad)/rectSizeTwo-1.4)][(int)floor((player.y-rad)/rectSizeTwo-2)] == 2 || 
        gridTwo[(int)floor((player.x+rad)/rectSizeTwo-1.4)][(int)floor((player.y+rad)/rectSizeTwo-2)] == 2) {
        player.x -= spd;
      }
    }  

    if (dir[3]) {
      if (gridTwo[(int)floor((player.x-rad)/rectSizeTwo-1.47)][(int)floor((player.y-rad)/rectSizeTwo-2)] == 2 || 
        gridTwo[(int)floor((player.x-rad)/rectSizeTwo-1.47)][(int)floor((player.y+rad)/rectSizeTwo-2)] == 2) {
        player.x += spd;
      }
    }
  }
}

void hitTwo() {  // The Hitbox with the circle 
  for (i = 4; i < 9; i++) {
    if (PVector.dist(player, circles[i]) < 25) {
      player.x = 70;
      player.y = 90;
      deaths++;
    }
  }
}

void stageTwoCircles() {  // The enemy circle 
  stroke(0, 255);
  strokeWeight(2);
  fill(255, 15, 15);
  
  ellipse(circles[4].x, circles[4].y, circles[4].z, circles[4].z);  
  circles[4].y += circleSpdTwo*yDirTwo[0];
  if (circles[4].y < 90 || circles[4].y > 400) yDirTwo[0] *= -1;

  ellipse(circles[5].x, circles[5].y, circles[5].z, circles[5].z);  
  circles[5].y += circleSpdTwo*yDirTwo[1];
  if (circles[5].y < 90 || circles[5].y > 400) yDirTwo[1] *= -1;

  ellipse(circles[6].x, circles[6].y, circles[6].z, circles[6].z);  
  circles[6].y += circleSpdTwo*yDirTwo[2];
  if (circles[6].y < 90 || circles[6].y > 400) yDirTwo[2] *= -1;

  ellipse(circles[7].x, circles[7].y, circles[7].z, circles[7].z);  
  circles[7].y += circleSpdTwo*yDirTwo[3];
  if (circles[7].y < 90 || circles[7].y > 400) yDirTwo[3] *= -1;

  ellipse(circles[8].x, circles[8].y, circles[8].z, circles[8].z); 
  circles[8].y += circleSpdTwo*yDirTwo[4];
  if (circles[8].y < 90 || circles[8].y > 400) yDirTwo[4] *= -1;
}
