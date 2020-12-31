void movement() {  
  if (dir[0])  player.y -= spd;  //up
  if (dir[1])  player.y += spd;  //down
  if (dir[2])  player.x += spd;  //right 
  if (dir[3])  player.x -= spd;  //left  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      dir[0] = true;
    } 
    if (keyCode == DOWN) {
      dir[1] = true;
    } 
    if (keyCode == RIGHT) {
      dir[2] = true;
    } 
    if (keyCode == LEFT) {
      dir[3] = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      dir[0] = false;
    } 
    if (keyCode == DOWN) {
      dir[1] = false;
    } 
    if (keyCode == RIGHT) {
      dir[2] = false;
    } 
    if (keyCode == LEFT) {
      dir[3] = false;
    }
  }
}