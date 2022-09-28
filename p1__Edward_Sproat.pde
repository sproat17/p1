PImage img, close, open, bell;
char floor[] = {'L', '2', '3', '4', '5', '6', '7', '8', '9'};
boolean clicked = false;
double distance;
int chosenFloor = 6;
int startTime = 0;
int stopTime = 0;
int floorsPressed  = 0;
boolean fL, f2, f3, f4, f5, f6, f7, f8, f9, cl, op, alarm = false;
int tL, t2, t3, t4, t5, t6, t7, t8, t9 = 0;

boolean running = false;

void setup() {
  size(500, 750);
  img = loadImage("chrome.jpg");
  close = loadImage("close.png");
  open = loadImage("open.png");
  bell = loadImage("bell.png");
}

void draw() {

  //chrome background
  image(img, 0, 0);
    
  //reset lights
  if (millis() > stopTime) {
    f9  = false;
    fL = false;
    f2 = false;
    f3 = false;
    f4 = false;
    f5 = false;
    f6 = false;
    f7 = false;
    f8 = false;
    t9  = 0;
    tL = 0;
    t2 = 0;
    t3 = 0;
    t4 = 0;
    t5 = 0;
    t6 = 0;
    t7 = 0;
    t8 = 0;
    floorsPressed = 0;
    startTime = 0;
    stopTime = 0;
  }

  //backgrounds lights
  fill(255);
  if (op) {
    fill(255, 0, 0);
    circle(width - width/5, 10.5*height/12, 100);
    op = !op;
  } else {
    fill(255);
    circle(width - width/5, 10.5*height/12, 100);
  }
  if (alarm) {
    fill(255, 0, 0);
    circle(width/2, 10.5*height/12, 100);
    noLoop();
  } else {
    fill(255);
    circle(width/2, 10.5*height/12, 100);
  }
  if (cl) {
    fill(255, 0, 0);
    circle(width/5, 10.5*height/12, 100);
    print("closed");
    cl = !cl;
  } else {
    fill(255);
    circle(width/5, 10.5*height/12, 100);
  }


  //redlight on or off
  if (fL  && millis() < stopTime && millis() < tL + 1500) {
    fill(255, 0, 0);
    circle(width/5, 7.5*height/12, 100);
  } else if (fL) {
    chosenFloor = 0;
    //tL = 0;
    fL = false;
  } else {
    fill(255);
    circle(width/5, 7.5*height/12, 100);
  }
  if (f2  && millis() < stopTime && millis() < t2 + 1500) {
    fill(255, 0, 0);
    circle(width/2, 7.5*height/12, 100);
  } else if (f2) {
    chosenFloor = 1;
    //t2 = 0;
    f2 = false;
  } else {
    fill(255);
    circle(width/2, 7.5*height/12, 100);
  }
  if (f3  && millis() < stopTime && millis() < t3 + 1500) {
    fill(255, 0, 0);
    circle(width - width/5, 7.5*height/12, 100);
  } else if (f3) {
    chosenFloor = 2;
    f3 = false;
  } else {
    fill(255);
    circle(width - width/5, 7.5*height/12, 100);
  }
  if (f4  && millis() < stopTime && millis() < t4 + 1500) {
    fill(255, 0, 0);
    circle(width/5, 5.5*height/12, 100);
  } else if (f4) {
    chosenFloor = 3;
    f4 = false;
  } else {
    fill(255);
    circle(width/5, 5.5*height/12, 100);
  }
  if (f5  && millis() < stopTime && millis() < t5 + 1500) {
    fill(255, 0, 0);
    circle(width/2, 5.5*height/12, 100);
  } else if (f5) {
    chosenFloor = 4;
    f5 = false;
  } else {
    fill(255);
    circle(width/2, 5.5*height/12, 100);
  }
  if (f6  && millis() < stopTime && millis() < t6 + 1500) {
    fill(255, 0, 0);
    circle(width - width/5, 5.5*height/12, 100);
  } else if (f6) {
    chosenFloor = 5;
    f6 = false;
  } else {
    fill(255);
    circle(width - width/5, 5.5*height/12, 100);
  }
  if (f7  && millis() < stopTime && millis() < t7 + 1500) {
    fill(255, 0, 0);
    circle(width/5, 3.5*height/12, 100);
  } else if (f7) {
    chosenFloor = 6;
    f7 = false;
  } else {
    fill(255);
    circle(width/5, 3.5*height/12, 100);
  }
  if (f8 && millis() < stopTime && millis() < t8 + 1500) {
    fill(255, 0, 0);
    circle(width/2, 3.5*height/12, 100);
  } else if (f8) {
    chosenFloor = 7;
    f8 = false;
  } else {
    fill(255);
    circle(width/2, 3.5*height/12, 100);
  }
  if (f9  && millis() < stopTime && millis() < t9 + 1500) {
    fill(255, 0, 0);
    circle(width - width/5, 3.5*height/12, 100);
  } else if (f9) {
    chosenFloor = 8;
    f9 = false;
  } else {
    fill(255);
    circle(width - width/5, 3.5*height/12, 100);
  }

  //screen for floor number
  fill(0);
  textSize(width/10);
  rect(width/5, height/30, 3*width/5, height/8);
  fill(255, 0, 0);
  textAlign(CENTER);
  text(floor[chosenFloor], width/2, height/8.75);
  fill(255);

  //diplay bottom row
  circle(width/5, 10.5*height/12, 90);
  fill(0);
  //text("close", width/5, 10.5*height/12 + 15);
  image(close, width/5 - 50, 10.5*height/12 -37.5, 100, 75);
  fill(255);
  circle(width/2, 10.5*height/12, 90);
  fill(0);
  //text("alarm", width/2, 10.5*height/12 + 15);
  image(bell, width/2 - 36.5, 10.5*height/12 - 25, 75, 50);
  fill(255);
  circle(width - width/5, 10.5*height/12, 90);
  fill(0);
  //text("open", width - width/5, 10.5*height/12 + 15);
  image(open, width - width/5 - 50, 10.5*height/12 - 37.5, 100, 75);
  fill(255);

  //display 2nd row
  circle(width/5, 5.5*height/12, 90);
  fill(0);
  text("4", width/5, 5.5*height/12 + 15);
  fill(255);
  circle(width/2, 5.5*height/12, 90);
  fill(0);
  text("5", width/2, 5.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 5.5*height/12, 90);
  fill(0);
  text("6", width - width/5, 5.5*height/12 + 15);
  fill(255);

  //display 3rd row
  circle(width/5, 7.5*height/12, 90);
  fill(0);
  text("*L", width/5, 7.5*height/12 + 15);
  fill(255);
  circle(width/2, 7.5*height/12, 90);
  fill(0);
  text("2", width/2, 7.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 7.5*height/12, 90);
  fill(0);
  text("3", width - width/5, 7.5*height/12 + 15);
  fill(255);

  //display fourth row
  circle(width/5, 3.5*height/12, 90);
  fill(0);
  text("7", width/5, 3.5*height/12 + 15);
  fill(255);
  circle(width/2, 3.5*height/12, 90);
  fill(0);
  text("8", width/2, 3.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 3.5*height/12, 90);
  fill(0);
  text("9", width - width/5, 3.5*height/12 + 15);
  fill(255);
}

void mouseClicked() {

  //calculate running time
  startTime = millis();
  floorsPressed += 1;
  stopTime = 1500 + startTime + 1500 * floorsPressed;

  //detect if user clicks G button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  if (distance < 45) {
    if (clicked) {
      tL = millis();
      fL = true;
      clicked = !clicked;
      return;
    }
  }

  // L button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t2 = millis();
      f2 = true;
      clicked = !clicked;
      return;
    }
  }

  // 2 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t3 = millis();
      f3 = true;
      clicked = !clicked;
      return;
    }
  }
  // 3 button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-5.5*height/12+15) * (mouseY-5.5*height/12+15));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t4 = millis();
      f4 = true;
      clicked = !clicked;
      return;
    }
  }
  // 4 button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-(5.5*height/12+15)) * (mouseY-(5.5*height/12 +15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t5 = millis();
      f5 = true;
      clicked = !clicked;
      return;
    }
  }
  // 5 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY- (5.5*height/12 + 15)) * (mouseY-(5.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t6 = millis();
      f6 = true;
      clicked = !clicked;
      return;
    }
  }
  // 6 button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-(3.5*height/12 + 15)) * (mouseY-(3.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t7 = millis();
      f7 = true;
      clicked = !clicked;
      return;
    }
  }
  // 7 button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-3.5*height/12 + 15) * (mouseY-3.5*height/12 + 15));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t8 = millis();
      f8 = true;
      clicked = !clicked;
      return;
    }
  }
  // 8 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY-(3.5*height/12 + 15)) * (mouseY-(3.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      t9 = millis();
      f9 = true;
      clicked = !clicked;
      return;
    }
  }

  // close button
  distance = Math.sqrt((mouseX-(width/5)) * (mouseX-(width/5)) + (mouseY-10.5*height/12) * (mouseY-10.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {

      //more math to calculatuate time of each stop
      //stopTime = startTime - 1500 * floorsPressed;
      stopTime -= 150000;
      cl = true;
      clicked = !clicked;
      return;
    }
  }

  // alarm button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-10.5*height/12) * (mouseY-10.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      alarm = true;
      stopTime = 10000000;
      clicked = !clicked;
      return;
    }
  }

  // open button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY-10.5*height/12) * (mouseY-10.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      stopTime += 1500;
      op = true;
      clicked = !clicked;
      return;
    }
  }
}


void mouseReleased() {
  clicked = !clicked;
}
