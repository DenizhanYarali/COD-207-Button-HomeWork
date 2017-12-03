boolean isButtonGhost;
static int buttonWidth = 100;
static int buttonHeight = 100;
int ballX, ballY;
int ballVX;

int r = 80;
int g = 80;
int b = 50;

int background1 = 50 ;
int background2 = 50 ;
int background3 = 50 ;


void setup () {
size(500,500);
ballX = width / 2;
ballY = height / 2;
ballVX = int(random(8,20)); 
background(0);
isButtonGhost = true;
noStroke();
}


void draw () {

 if(isButtonGhost) {
  rect(width / 2 - (buttonWidth / 2), height / 2- (buttonHeight / 2), buttonWidth,buttonHeight );
}


else {
  ballX += ballVX;
  
  if (ballX - 15 <= 0 || ballX + 15 >= width) {
     ballVX *= -1;  
     r=int(random(50,255));
     g=int(random(50,255));
     b=int(random(50,255));
}

background1 = int(random(100,255));
background2 = int(random(100,255));
background3 = int(random(100,255));
  
 background (color(background1,background2,background3));

fill(color(r,g,b));
ellipse(ballX - 15, ballY - 15,50,50);

}
}


void mousePressed () {

if(mouseX >= width / 2 - (buttonWidth /2) && mouseX <= width / 2 + (buttonWidth / 2) && mouseY >= height / 2- (buttonWidth / 2 ) && mouseY <= height / 2 + (buttonHeight / 2))

isButtonGhost = false;


}
