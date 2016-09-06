luciernaga luci;
ArrayList<luciernaga> lucis;
int cuantas = 50;
int rotacion = 0;

void setup() {
  size(1280, 720, P3D);
  //luci = new luciernaga();
  lucis = new ArrayList<luciernaga>();
  for (int i=0; i<cuantas; i++) {
    lucis.add(new luciernaga());
  }
}

void draw() {
  background(255);

  stroke(255, 0, 0);

  pushMatrix();
  translate(width/2, height/2, width/-2);
  //rotateY(-radians(rotacion));
  /*
  noFill();
  sphereDetail(10);
  sphere(width);
  */


  for (int n=0; n<5; n++) {
    pushMatrix();
    rotateY(radians(n*(360/5)));
    pushMatrix();
    translate(width/2, 0, 0);
    rotateY(-radians(rotacion));
    //stroke(0,255,0);
    //sphere(width/5);
    for (int i = 0*n; i < lucis.size()/5; i++) {  
      luciernaga l = lucis.get(i + (lucis.size()/5)*n);
      pushMatrix();
      rotateY(-radians(n*(360/5)));
      l.draw();
      popMatrix();
    }
    popMatrix();
    popMatrix();
  }
  popMatrix();
  rotacion++;
}