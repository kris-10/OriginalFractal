color color1 = color(0,168,198);
color color2 = color(249,242,231);
color color3 = color(174,226,57);
color gideonInsistsOnNamingThis = color(143,190,0);
color color4 = color(64,192,203);
int myColors [] = {color1, color2, color3, gideonInsistsOnNamingThis, color4};
float rot=0;

public void setup(){
  size(600,600);

}

public void draw(){
  background(0);
  noFill();
  //noStroke();
  //translate(width/4,height/4);
   
  myFractal(300,300,300);
  
 
}

public void mouseWheel(){
   rotate(rot);
   rot+=.01;
}

public void myFractal(int x, int y, int siz){


  stroke(myColors[(int)(Math.random()*5)]);

//fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  triangle(x-siz/2,y,x+siz/2,y,x,y-siz);
  triangle(x-siz/2,y,x+siz/2,y,x,y+siz);
  triangle(x,y+siz/2,x,y-siz/2,x-siz,y);
  triangle(x,y+siz/2,x,y-siz/2,x+siz,y);

  
  if(siz>10){ 
//fill((int)(Math.random()*255));
    pushMatrix();
    translate(x-siz/4,y);
    rotate(-PI/2);
    myFractal(0,0,siz/2);
    popMatrix();
    
    pushMatrix();
    translate(x+siz/4,y);
    rotate(PI/2);
    myFractal(0,0,siz/2);
    popMatrix();
    
    
    rotate(PI/4);
    myFractal(300,300,siz-(siz/2));

    


  }
}