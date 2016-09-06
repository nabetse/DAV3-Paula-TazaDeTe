class luciernaga {
  PVector pos ;
  PImage [] imagenes = new PImage [5];

  luciernaga() { 
    for ( int i = 0; i<imagenes.length; i++ ) {
      imagenes[i] = loadImage( "luci" + (i+1) + ".png" );
    } 
    pos = new PVector(random(-width/2, width/2), random(-height/2, height/2), random(-width/2, width/2));
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