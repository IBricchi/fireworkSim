class firework{
  int len = 25;
  int time = 0;
  
  float x;
  float y;
  float z;
  float xc;
  float yc;
  float zc;
  
  color col;
  
  boom ex;
  
  PVector[] past = new PVector[len];
  
  firework(){
    x = random(-5,5);
    y = random(0,5);
    z = random(-5,5);
    
    xc = random(-0.80,0.80);
    yc = random(5,10);
    zc = random(-0.80,0.80);
    
    col = color(random(0,255),255,255);
    
    for(int i = 0; i < len; i++){
      past[i] = new PVector(x,y,z);
    }
  }
  
  void update(){
    stroke(col);
    if(yc > 0.01){
      for(int i = 1; i < len; i++){
        past[i-1] = past[i];
      }
      
      x += xc;
      y -= yc;
      z += zc;
      
      yc /= 1.05;
      
      past[len-1] = new PVector(x,y,z);
    }else{
      if(time == 0){
        ex = new boom(past[len-1]);
        ex.show();
      }
      time++;
      ex.show();
    }
  }
  
  void show(){
    noFill();
    beginShape();
    for(int i = 0; i < len; i++){
      curveVertex(past[i].x,past[i].y,past[i].z);
    }
    endShape();
  }
}