void zonas()
{
  //27 ZONAS POR TODO EL CUADRADO

  int posx_inicial = -250;
  int posy_inicial = -250;
  int posz_inicial = -250;

  zona = 0;

  for (posx_inicial = -250; posx_inicial < 250 - tam_zona; posx_inicial += tam_zona)
  {
    for (posy_inicial = -250; posy_inicial < 250 - tam_zona; posy_inicial += tam_zona)
    {
      for (posz_inicial = -250; posz_inicial < 250 - tam_zona; posz_inicial += tam_zona)
      {
        
        //CUADRADOS QUE MARACAN LAS DIMENSIONES DE LAS ZONAS//
        
        
        pushMatrix();
         stroke(255, 255, 0);
         noFill();
         translate(posx_inicial + tam_zona / 2, posy_inicial + tam_zona / 2, posz_inicial + tam_zona / 2);
         box(tam_zona);
         popMatrix();
         
         
        int x_zona = floor(random(posx_inicial + ancho_base / 2, posx_inicial + ancho_base / 2 + tam_zona / 2));
        int y_zona = floor(random(posy_inicial + ancho_base / 2, posy_inicial + ancho_base / 2 + tam_zona / 2));
        int z_zona = floor(random(posz_inicial + ancho_base / 2, posz_inicial + ancho_base / 2 + tam_zona / 2));

        zonas[zona][0] = x_zona;
        zonas[zona][1] = y_zona;
        zonas[zona][2] = z_zona;
        
        int random = floor(random(2));
         
         if (random == 1)
         {
         bases[zona] = true;
         pushMatrix();
         fill(50);
         translate(x_zona, y_zona, z_zona);
         box(ancho_base, largo_base, alto_base);
         popMatrix();
         /*
         pushMatrix();
         fill(#79CAF5, 50);
         noStroke();
         translate(x_zona, y_zona, z_zona + alto_base / 2 + 50.5);
         box(ancho_base, largo_base, 100);
         popMatrix();
         */
         } else
         {
         zonas[zona][0] = 0;
         zonas[zona][1] = 0;
         zonas[zona][2] = 0;
         bases[zona] = false;
         }
         
        zona++;
      }
    }
  }
}
