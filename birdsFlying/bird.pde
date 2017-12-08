class bird{
  int i=0;
  PImage [] images= new PImage[3];
  int x=0;
  float xspeed,yspeed,xpos,ypos;
  bird(float xspd,float xps,float yps){
    xspeed=xspd;
    xpos=xps;
    ypos=yps;
    for( i=0;i<3;i++){
      PImage a=loadImage("./bird"+(i+1)+".png");
      images[i]=a;
    } 
  }
  void move(){
    check();
    xpos+=xspeed;
  }
  void check(){
    if(xpos>width){
      xpos=0;
    }
  }
  void display(){
   // ellipse(xpos,ypos,25,25);
   image(images[x%3],xpos,ypos,25,25);
   x++;
}
}