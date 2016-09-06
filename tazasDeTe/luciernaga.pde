class luciernaga {
  PVector posicion ;
  PImage [] luciernagas = new PImage [5];
  float contador = random(360);
  float velocidad = random(2)+ 0.1;

  // Es como el setup() del codigo principal
  luciernaga() { 
    for ( int i = 0; i<luciernagas.length; i++ ) {
      luciernagas[i] = loadImage( "luci" + (i+1) + ".png" );
    } 
    posicion = new PVector(random(-width/4, width/4), 0, random(-width/4, width/4));
  }

  void draw() {
    posicion.y = sin(radians(contador)) * 200;
    int cualLuci = int(random(0, 5));
    pushMatrix();
    translate(posicion.x, posicion.y, posicion.z);
    //rotateY(-radians(rotacion));
    rotateY(radians(rotacion));
    image(luciernagas[cualLuci], 0, 0);
    popMatrix();
    contador += velocidad;
  }
} 