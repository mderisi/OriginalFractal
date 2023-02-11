public void setup(){
  size(500, 500);
}
public void draw(){
  background(255, 255, 255);
  myFractal(250, 250, 480);  
  stroke(255);
  hearts(mouseX, 50, mouseX, -50, 500, 50, mouseX, 225);
  hearts(mouseX, 50, mouseX, -50, 0, 50, mouseX, 225);

}
public void myFractal(int x, int y, int siz){

  fill(255, 196, 240, 55);
  ellipse(x, y, siz, siz);
  noStroke();
  if(siz > 10){
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}

public void hearts(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4){
  
  fill(255, 39, 15, 55);
  bezier(x1, y1, x2, y2, x3, y3, x4, y4);
 // stroke(255);
  if((y4 < 500)&&(y4 > 0)){
    //bottom
    int siz = 140;
   hearts(x1 + siz, y1 + siz, x2 + siz, y2 + siz, x3 + siz, y3 + siz, x4 + siz, y4 + siz);
   hearts(x1 - siz, y1 + siz, x2 - siz, y2 + siz, x3 - siz, y3 + siz, x4 - siz, y4 + siz);

  }
}
