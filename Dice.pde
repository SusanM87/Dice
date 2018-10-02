int numDots, numTotal;

void setup()
{
  size(300,330);
  noLoop();
}

void draw()
{
  background(197);
  for(int y = 10; y <= 250; y+=60)
  {
    for(int x = 10; x <= 250; x+=60)
    {
      Die bob = new Die (x,y);
      bob.show();
      numTotal = numTotal + numDots;
      
    }
  }
  fill(0);
  text("Total: " + numTotal,120,320);
  numTotal = 0;
}

void mousePressed()
{
  redraw();
}

class Die 
{
  int myX, myY;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX,myY,40,40,8);
    if(numDots == 1)
    {
      //one
      fill((int)(Math.random()*256),0,(int)(Math.random()*256));
      ellipse(20+myX,20+myY,4,4);
    }
    else if (numDots == 2)
    {
      //two   NOTE SUB 10
      fill((int)(Math.random()*256),(int)(Math.random()*256),0);
      ellipse(10+myX,10+myY,4,4);
      ellipse(30+myX,30+myY,4,4);
    }
    else if (numDots == 3)
    {
      //three
      fill(0,(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(10+myX,10+myY,4,4);
      ellipse(20+myX,20+myY,4,4);
      ellipse(30+myX,30+myY,4,4);
    }
    else if (numDots == 4)
    {
      //four
      fill((int)(Math.random()*256),0,(int)(Math.random()*256));
      ellipse(10+myX,10+myY,4,4);
      ellipse(10+myX,30+myY,4,4);
      ellipse(30+myX,10+myY,4,4);
      ellipse(30+myX,30+myY,4,4);
    }
    else if (numDots == 5)
    {
      //five
      fill((int)(Math.random()*256),(int)(Math.random()*256),0);
      ellipse(10+myX,10+myY,4,4);
      ellipse(10+myX,30+myY,4,4);
      ellipse(20+myX,20+myY,4,4);
      ellipse(30+myX,10+myY,4,4);
      ellipse(30+myX,30+myY,4,4);
    }
    else if (numDots == 6)
    {
      //six
      fill(0,(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(10+myX,10+myY,4,4);
      ellipse(10+myX,20+myY,4,4);
      ellipse(10+myX,30+myY,4,4);
      ellipse(30+myX,10+myY,4,4);
      ellipse(30+myX,20+myY,4,4);
      ellipse(30+myX,30+myY,4,4);
    }
    
  }
}