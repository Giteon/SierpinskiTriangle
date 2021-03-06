public void setup()
{
  size(1200, 605);
  //  background(255, 255, 240);
  background(255);
}
public void draw()
{
  sierpinski(10, 600, 600, true);

  sierpinski(600, 600, 600, false);

  sierpinski(600, 600, 600, true);

  sierpinski(10, 600, 600, false);
}
public void mouseClicked()//optional
{
  //  sierpinski(10, 700, 600,true);
  //  sierpinski(600, 700, 600,false);
  //  println("DID IT");
}
public void sierpinski(int x, int y, int len, boolean right) 
{

  if (len > 15)
  {

    noStroke();
    sierpinski(x, y, len/2, right);
    sierpinski(len/2+x, y, len/2, right);    
    sierpinski(len/4+x, (int)(y-len/2), len/2, right);
  }
  else
  {
    if (Math.random() < .9)
    {
      fill(abs(y)/3, abs(y)/4, abs(y)/5);
    }
    else
    {
      noFill();
    }
    if (right == true)
    {
      triangle(x, y, x+frameCount/4, y, x+frameCount/4, y-len/2/*or* something for depth*/);
    }
    else
    {
      triangle(x-frameCount/4, y, x, y, x-frameCount/4, y-len/2/*or* something for depth*/);
    }
    //triangle(x1, y1, x2, y2, x3, y3)
  }
}