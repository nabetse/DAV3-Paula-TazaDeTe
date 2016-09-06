ArrayList<luciernaga> lucis;
int cuantas = 100;
int rotacion = 0;

void setup() {
  size(1280, 720, P3D);
  hint(ENABLE_DEPTH_SORT);
  lucis = new ArrayList<luciernaga>();
  for (int i=0; i<cuantas; i++) {
    lucis.add(new luciernaga());
  }
}

void draw() {
  background(255);
  pushMatrix();
  rotateY(radians(rotacion));
 // rotateX(radians(rotacion));
  translate(width/2, height/2, 0);
  for (int i = 0; i < lucis.size(); i++) {  
    luciernaga l = lucis.get(i);
    l.draw();
  }
  popMatrix();
  rotacion ++;
}