PImage img, close, open, bell;
char floor[] = {'G', 'L', '2', '3', '4', '5', '6', '7', '8'};
boolean clicked = false;
double distance;
boolean running = false;
int chosenFloor = 3;
int startTime = 0;
boolean lights = true;
int stopTime = 0;
int floorsPressed  = 0;
boolean fG, fL, f2, f3, f4, f5, f6, f7, f8, cl, op, alarm = false;


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


  //backgrounds lights
  //if(millis() > startTime + stopTime){
    //fG = fL = f2 = f3 = f4 = f5 = f6 = f7 = f8 = false;
  //}
  
  
  
  
  
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
  
  if(!running && millis() > startTime + stopTime) {
    fG = fL = f2 = f3 = f4 = f5 = f6 = f7 = f8 = false;
    floorsPressed = 0;
    startTime = 0;
    //running = !running;
  }

  if (fG && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/5, 7.5*height/12, 100);
  } else {
    fill(255);
    circle(width/5, 7.5*height/12, 100);
  }

  if (fL && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/2, 7.5*height/12, 100);
  } else {
    fill(255);
    circle(width/2, 7.5*height/12, 100);
  }

  if (f2 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width - width/5, 7.5*height/12, 100);
  } else {
    fill(255);
    circle(width - width/5, 7.5*height/12, 100);
  }

  if (f3 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/5, 5.5*height/12, 100);
  } else {
    fill(255);
    circle(width/5, 5.5*height/12, 100);
  }

  if (f4 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/2, 5.5*height/12, 100);
  } else {
    fill(255);
    circle(width/2, 5.5*height/12, 100);
  }

  if (f5 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width - width/5, 5.5*height/12, 100);
  } else {
    fill(255);
    circle(width - width/5, 5.5*height/12, 100);
  }

  if (f6 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/5, 3.5*height/12, 100);
  } else {
    fill(255);
    circle(width/5, 3.5*height/12, 100);
  }

  if (f7 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width/2, 3.5*height/12, 100);
  } else {
    fill(255);
    circle(width/2, 3.5*height/12, 100);
  }

  if (f8 && lights && millis() < startTime + stopTime) {
    fill(255, 0, 0);
    circle(width - width/5, 3.5*height/12, 100);
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
  text("3", width/5, 5.5*height/12 + 15);
  fill(255);
  circle(width/2, 5.5*height/12, 90);
  fill(0);
  text("4", width/2, 5.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 5.5*height/12, 90);
  fill(0);
  text("5", width - width/5, 5.5*height/12 + 15);
  fill(255);

  //display 3rd row
  circle(width/5, 7.5*height/12, 90);
  fill(0);
  text("G", width/5, 7.5*height/12 + 15);
  fill(255);
  circle(width/2, 7.5*height/12, 90);
  fill(0);
  text("L", width/2, 7.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 7.5*height/12, 90);
  fill(0);
  text("2", width - width/5, 7.5*height/12 + 15);
  fill(255);

  //display fourth row
  circle(width/5, 3.5*height/12, 90);
  fill(0);
  text("6", width/5, 3.5*height/12 + 15);
  fill(255);
  circle(width/2, 3.5*height/12, 90);
  fill(0);
  text("7", width/2, 3.5*height/12 + 15);
  fill(255);
  circle(width - width/5, 3.5*height/12, 90);
  fill(0);
  text("8", width - width/5, 3.5*height/12 + 15);
  fill(255);
}

void mouseClicked() {

  startTime = millis();
  print(startTime +"\n");
  
  floorsPressed += 1;
  print(floorsPressed);
 
  
  stopTime = 1500 * floorsPressed;
  
  
  //detect if user clicks G button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 0;
      fG = true;
      clicked = !clicked;
      return;
    }
  }

  // L button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 1;
      fL = true;
      clicked = !clicked;
      return;
    }
  }

  // 2 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY-7.5*height/12) * (mouseY-7.5*height/12));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 2;
      f2 = true;
      clicked = !clicked;
      return;
    }
  }
  // 3 button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-5.5*height/12+15) * (mouseY-5.5*height/12+15));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 3;
      f3 = true;
      clicked = !clicked;
      return;
    }
  }
  // 4 button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-(5.5*height/12+15)) * (mouseY-(5.5*height/12 +15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 4;
      f4 = true;
      clicked = !clicked;
      return;
    }
  }
  // 5 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY- (5.5*height/12 + 15)) * (mouseY-(5.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 5;
      f5 = true;
      clicked = !clicked;
      return;
    }
  }
  // 6 button
  distance = Math.sqrt((mouseX-width/5) * (mouseX-width/5) + (mouseY-(3.5*height/12 + 15)) * (mouseY-(3.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 6;
      f6 = true;
      clicked = !clicked;
      return;
    }
  }
  // 7 button
  distance = Math.sqrt((mouseX-width/2) * (mouseX-width/2) + (mouseY-3.5*height/12 + 15) * (mouseY-3.5*height/12 + 15));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 7;
      f7 = true;
      clicked = !clicked;
      return;
    }
  }
  // 8 button
  distance = Math.sqrt((mouseX-(width - width/5)) * (mouseX-(width - width/5)) + (mouseY-(3.5*height/12 + 15)) * (mouseY-(3.5*height/12 + 15)));
  // x and y
  if (distance < 45) {
    if (clicked) {
      chosenFloor = 8;
      f8 = true;
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
  // if user clicks
  clicked = !clicked;
}
