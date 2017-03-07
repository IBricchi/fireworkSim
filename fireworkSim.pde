import peasy.*;
PeasyCam cam;

int finum = 250;

firework[] fire = new firework[finum];

int num = 0;

void setup(){
  fullScreen(P3D);
  //size(500, 500, P3D);
  cam = new PeasyCam(this, 100);
  cam.lookAt(0, -125, 100);
  colorMode(HSB);
}
void draw(){
  background(0);
  if(num != finum){
    fire[num] = new firework();
    for(int i = 0; i < num + 1; i++){
      if(fire[i].time > 5){
        fire[i] = new firework();
      }
      fire[i].update();
      fire[i].show();
    }
    num++;
  }else{
    for(int i = 0; i < finum; i++){
      if(fire[i].time > 5){
        fire[i] = new firework();
      }
      fire[i].update();
      fire[i].show();
    }
  }
}