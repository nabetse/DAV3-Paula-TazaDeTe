class luciernaga {
  PVector pos ;
  PImage [] luciernagas = new PImage [5];

  luciernaga() { 
    for ( int i = 0; i<luciernagas.length; i++ ) {
      luciernagas[i] = loadImage( "luci" + (i+1) + ".png" );
    } 
    pos = new PVector(0, 0, 0);
  }

  void draw() {
    // un numero de imagen aleatoria entre las que estan ya cargadas
    int cualLuci = int(random(luciernagas.length)); 
    
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    image(luciernagas[cualLuci], 0 , 0);
    popMatrix();
  }
} 