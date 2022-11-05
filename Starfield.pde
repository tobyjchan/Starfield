Particle[] dot = new Particle[1000];
int hello = 0;
void setup(){
 size(500,500);
   for(int i = 0; i <= dot.length-1; i++){
    dot[i] = new Particle();
    dot[0] = new Oddball();
  }
}
void mousePressed(){
  hello++;
  for(int i = 0; i <= dot.length-1; i++){
    dot[i] = new Particle();
    dot[0] = new Oddball();
  }
}
void draw(){
  background(0,0,0);
  for(int i = 0; i <= dot.length-1; i++){
  dot[i].move();
  dot[i].show();
  }
}
class Particle{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  Particle(){
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(100*Math.PI);
    mySpeed = Math.random()*10;
  }
  void move(){
    myX = (myX + (Math.cos(myAngle)*mySpeed));
    myY = (myY + (Math.sin(myAngle)*mySpeed));
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX,(float)myY,5,5);
  }
}
class Oddball extends Particle{
    Oddball(){
      myX = 250;
      myY = 250;
      myAngle = Math.random()*(100*Math.PI);
      mySpeed = Math.random()*10;
  
   
    }
    void move(){
      myX = (myX + (Math.cos(myAngle)*mySpeed));
      myY = (myY + (Math.sin(myAngle)*mySpeed));
    }
    void show(){
      
      fill(206,202,202);
      ellipse((float)myX,(float)myY,200,200);
     
        fill(0,0,0);
          ellipse((float)myX+50,(float)myY,25,50);
            ellipse((float)myX+50,(float)myY,25,50);
             ellipse((float)myX-50,(float)myY,25,50);
            ellipse((float)myX-50,(float)myY,25,50);
             ellipse((float)myX,(float)myY+50,100,20);
      fill(255,255,255);
    ellipse((float)myX+50,(float)myY,10,15);
      ellipse((float)myX+50,(float)myY,10,15);
      ellipse((float)myX-50,(float)myY,10,15);
      ellipse((float)myX-50,(float)myY,10,15);
      
      
       
    
    }
}
