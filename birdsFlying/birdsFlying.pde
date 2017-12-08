ArrayList<bird> Birds=new ArrayList<bird>();
int total=5;
int y=0;
float x=width;
PImage bg;
boolean recording =false;
void setup(){
   size(960,578);
 for(int i=0;i<total;i++){
    Birds.add(new bird(random(1,5),i,i*25+25));
  }
  frameRate(7);
  bg = loadImage("background.jpg");
}

void keyPressed(){
  if(key =='r' || key=='R'){
    recording =!  recording;
  }
  
}

void draw(){
  background(bg);
  y=0;
 while(y<total){
    bird b=Birds.get(y);
    b.move();
    b.check();
    y++;
  }
  y=0;
 // tree();
  while(y<total){
     bird b=Birds.get(y);
     b.display();
     y++;
   }
   //if(recording){
   //  saveFrame("video/bird_####.png");
   //  fill(0,255,0);
   //  ellipse(width/2,height-50,20,20);
   //}
   //else{
   //  fill(255,0,0);
   //  ellipse(width/2,height-50,20,20);
   //}
   
   
}   

void tree(){
   if(x<0){
    x=width;
  }
    fill(250,100,200);
   ellipse(x,100,30,20);
   x--;
}