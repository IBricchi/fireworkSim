class boom{
  float x;
  float y;
  float z;
  
  PVector[] lineEnd = new PVector[100];
  PVector lineOr;
  
  boom(PVector boomloc){
    lineOr = boomloc;
    for(int i = 0; i < 100; i++){
      x = random(-20,20);
      y = random(-20,20);
      z = sqrt(pow(20,2)-pow(x,2)-pow(y,2));
      if( random(0,1) < 0.5){
        lineEnd[i] = new PVector(lineOr.x + x,lineOr.y + y,lineOr.z + z);
      }else{
        lineEnd[i] = new PVector(lineOr.x + x,lineOr.y + y,lineOr.z - z);
      }
    }
  }
  void show(){
    for(int i = 0; i < 100; i++){
      line(lineOr.x,lineOr.y,lineOr.z,lineEnd[i].x,lineEnd[i].y,lineEnd[i].z);
    }
  }
}