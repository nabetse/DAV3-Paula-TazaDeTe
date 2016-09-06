class luciernaga {
  PVector pos ;
  PImage [] imagenes = new PImage [5];

  luciernaga() { 
    for ( int i = 0; i<imagenes.length; i++ ) {
      imagenes[i] = loadImage( "luci" + (i+1) + ".png" );
    } 
    pos = new PVector(0, 0, 0);
  }

  void draw() {
    // un numero de imagen aleatoria entre las que estan ya cargadas
    int cualLuci = int(random(imagenes.length)); 
    
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    imageMode(CENTER);
    image(imagenes[cualLuci], 0 , 0);
    popMatrix();
  }
} 