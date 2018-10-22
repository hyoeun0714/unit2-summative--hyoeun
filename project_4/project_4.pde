boolean gameOver= false; 
PImage CHARACTER; 
PImage HOME; 


float HOMEX= 650;
float HOMEY= 100; 

float CHARACTERX= 400;
float CHARACTERY= 700; 

float CHARACTER2X;
float CHARACTER2Y; 
PImage CHARACTER2;



CHARACTER2 firstCHARARCTER2;

CHARACTER2[]CHARACTER2s = new CHARACTER2[30]; 

void setup()
{
  background(0); 
  size(800,800,P2D); 
  

  CHARACTER= loadImage("character.png"); 
  CHARACTER.resize(50,50);  
  imageMode(CENTER);
  HOME= loadImage("home.png");
  HOME.resize(100,100); 
  
  firstCHARARCTER2 = new CHARACTER2();
  for( int i = 0; i < 30; i ++)
  {
    CHARACTER2s[i] = new CHARACTER2(); 
  }

} 
  

void draw()

{
  background(0); 
    fill(132,213,214);
  rect(0,630,800,200);
  
 image(CHARACTER, CHARACTERX , CHARACTERY );
 image(HOME, HOMEX, HOMEY); 
 if (gameOver == false)
 {
   
  for(int i=0; i<30; i++)
  {
    CHARACTER2s[i].Move();
  
  
  if(dist(CHARACTERX, CHARACTERY, CHARACTER2s[i].CHARACTER2X, CHARACTER2s[i].CHARACTER2Y) < 25)
  {
gameOver= true;
  }
  }
}
if (gameOver ==true)
{
   background(255,0,0); 
  textSize(50); 
   text("GameOver", 200, 400); 
   text("Press 'ENTER' to restart",200,450); 
   
   if (keyCode ==ENTER)
    {
      gameOver =false;
      
CHARACTERX= 400;
 CHARACTERY= 700; 

    }
}
  
  
  if(dist(CHARACTERX, CHARACTERY, HOMEX, HOMEY) < 50 + 50)
  {
    background(0,255,0);
    fill(0,0,0);
    text("win", 400, 400); 
  
  }
 
}


//move character with arrow keys 
void keyPressed()
{
  if(key == 'w' || key == 'W')
  {
    CHARACTERY = CHARACTERY-20;
  }
  
  if(key == 's' || key == 'S' )
  {
    CHARACTERY = CHARACTERY+20;
  }
  if(key == 'a' || key == 'A')
  {
    CHARACTERX = CHARACTERX-20;
  }
  if(key == 'd' || key == 'D')
  {
    CHARACTERX= CHARACTERX+20;
  } 
}  


  
