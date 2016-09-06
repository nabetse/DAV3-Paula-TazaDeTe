ArrayList<luciernaga> lucis;
int cuantas = 1;

void setup() {
  size(1280, 720, P3D);
  lucis = new ArrayList<luciernaga>();
  for (int i=0; i<cuantas; i++) {
    lucis.add(new luciernaga());
  }
}

void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2, 0);
  for (int i = 0; i < lucis.size(); i++) {  
    luciernaga l = lucis.get(i);
    l.draw();
  }
  popMatrix();
}