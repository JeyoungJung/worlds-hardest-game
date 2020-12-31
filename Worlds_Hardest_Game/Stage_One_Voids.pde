void collisionOne() {   // Checking Collision with the wall
  if (player.x < 100+rad)player.x = 100+rad;
  if (player.x > 350-rad)player.x = 350-rad;
  if (player.y < 100+rad)player.y = 100+rad;
  if (player.y > 350-rad)player.y = 350-rad;

  if (player.x > 110 && player.x < 340 && player.y > 110 && player.y < 340) {
    if (dir[0]) {
      if (gridOne[(int)floor((player.x+rad)/rectSizeOne-2)][(int)floor((player.y-rad)/rectSizeOne-2)] == 2 || 
      gridOne[(int)floor((player.x-rad)/rectSizeOne-2)][(int)floor((player.y-rad)/rectSizeOne-2)] == 2) {
        player.y += spd;
      }
    }  

    if (dir[1]) {
      if (gridOne[(int)floor((player.x+rad)/rectSizeOne-2)][(int)floor((player.y+rad)/rectSizeOne-2)] == 2 || 
      gridOne[(int)floor((player.x-rad)/rectSizeOne-2)][(int)floor((player.y+rad)/rectSizeOne-2)] == 2) {
        player.y -= spd;
      }
    }  

    if (dir[2]) {
      if (gridOne[(int)floor((player.x+rad)/rectSizeOne-2)][(int)floor((player.y-rad)/rectSizeOne-2)] == 2 || 
      gridOne[(int)floor((player.x+rad)/rectSizeOne-2)][(int)floor((player.y+rad)/rectSizeOne-2)] == 2) {
        player.x -= spd;
      }
    }  

    if (dir[3]) {
      if (gridOne[(int)floor((player.x-rad)/rectSizeOne-2)][(int)floor((player.y-rad)/rectSizeOne-2)] == 2 || 
      gridOne[(int)floor((player.x-rad)/rectSizeOne-2)][(int)floor((player.y+rad)/rectSizeOne-2)] == 2) {
        player.x += spd;
      }
    }
  }
}

void stageOneCircles() {  // The enemy Circles
  stroke(0, 255);
  strokeWeight(2);
  fill(255, 15, 15);
  
  ellipse(circles[0].x, circles[0].y, circles[0].z, circles[0].z);  // bottom circle
  circles[0].x += circleSpdOne*xDirOne[0]-0.3;
  if (circles[0].x > 280 || circles[0].x < 119) xDirOne[0] *= -1;

  ellipse(circles[1].x, circles[1].y, circles[1].z, circles[1].z);  // left circle
  circles[1].y += circleSpdOne*yDirOne[1];
  if (circles[1].y < 170 || circles[1].y > 330) yDirOne[1] *= -1;

  ellipse(circles[2].x, circles[2].y, circles[2].z, circles[2].z);  // top circle
  circles[2].x += circleSpdOne*xDirOne[2];
  if (circles[2].x < 170 || circles[2].x > 330) xDirOne[2] *= -1;

  ellipse(circles[3].x, circles[3].y, circles[3].z, circles[3].z);  // right circle
  circles[3].y += circleSpdOne*yDirOne[3]-0.3;
  if (circles[3].y < 119 || circles[3].y > 280) yDirOne[3] *= -1;
}

void hitOne() {
  for (i = 0; i < 4; i++) {
    if (PVector.dist(player, circles[i]) < 25) {
      player.x = 125;
      player.y = 125;
      deaths++;
    }
  }
}


