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
  for (int i = 0; i < lucis.size(); i++) {  
      luciernaga l = lucis.get(i);
      l.pos.x = mouseX;
      l.pos.y = mouseY;
      l.draw();
    }
}