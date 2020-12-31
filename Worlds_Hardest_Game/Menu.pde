void menu() {
  background(153, 153, 255);
  textSize(35);
  fill(255);
  text("THE WORLD'S", 110, 120);
  text("HARDEST GAME", 90, 170);
  text("Control", 240, 340);  
  text("Play", 100, 340);
  if (mouseX > 100 && mouseX < 150 && mouseY > 310 && mouseY < 360 && mousePressed) {  // Mouse Clicked on PLay Button, it starts the game
    state = 1;
    stage = 1;
  }  
  if (mouseX > 240 && mouseX < 340 && mouseY > 310 && mouseY < 360 && mousePressed) {  // Mouse Clicked on Control Button, it goes to state 3(control)
    state = 3;
  }
}

void control() {
  background(153, 153, 255);
  textSize(29);
  fill(255);
  text("Use the Arrow Keys", 90, 40);
  text("to get to the other Green Zone", 10, 80);
  stroke(0, 255);
  strokeWeight(5);
  rect(225, 225, 255, 255);

  for (i=0; i<5; i++) {  // The map on the Controls Menu
    for (j=0; j<5; j++) {   

      if (gridZero[i][j] == 1) {
        fill(255);
      } else if (gridZero[i][j] == 2) {
        stroke(0, 255);
        fill(211, 211, 211);
      } else if (gridZero[i][j] == 3) {
        fill(50, 255, 80);
      } else if (gridZero[i][j] == 4) {
        fill(50, 255, 80);
      }
      noStroke();
      rect(i*rectSizeOne+125, j*rectSizeOne+125, rectSizeOne, rectSizeOne);              

      if (player.x > 100 && player.x < 350 && player.y > 100 && player.y < 350) {                    
        k = gridZero[(int)floor((player.x)/rectSizeOne-2)][(int)floor((player.y)/rectSizeOne-2)];  //The main code to convert x and y to 2d array
      }

      if (k == 4) {
        player.x = 125;
        player.y = 125;
        stage = 1;       
        state = 1;
      }
    }
  }  

  if (player.x < 100+rad)player.x = 100+rad;
  if (player.x > 350-rad)player.x = 350-rad;
  if (player.y < 100+rad)player.y = 100+rad;
  if (player.y > 350-rad)player.y = 350-rad;

  fill(15, 15, 200);
  stroke(0, 255);
  strokeWeight(4);
  rect(player.x, player.y, player.z, player.z);

  movement();
}

void end() {
  background(153, 153, 255);
  deathBar();
  textSize(32);
  text("Congrats!", 150, 170);
  textSize(28);
  text("You did all this for nothing!", 40, 240);
  text("Quit to Play Again", 110, 360);
  textSize(18);
  fill(255, 0, 0);
  text("Deaths : " + deaths, 180, 300);
  textSize(32);
  fill(255);
}