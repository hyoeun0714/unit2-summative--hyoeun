class CHARACTER2
{
  //Number data
  float CHARACTER2X;
  float CHARACTER2Y; 
   PImage CHARACTER2;
   //default constructor 
   CHARACTER2()
   {
     CHARACTER2X = random(0, 800); 
     CHARACTER2Y = random(0, 800); 
     CHARACTER2 = loadImage("character2.png"); 
     CHARACTER2.resize(30, 30); 
   }
   
   //Actions / Functions()
   
   void Move()
   {
     CHARACTER2Y= CHARACTER2Y+3;
     CHARACTER2X= CHARACTER2X+3;
     image(CHARACTER2, CHARACTER2X, CHARACTER2Y, 50, 50); 
     
     if(CHARACTER2Y > 600)
     {
       CHARACTER2Y= 0; 
       CHARACTER2X= random(-1000, 800); 
     }
     
   }
} 
     
  
