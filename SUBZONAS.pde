void subzonas()
{
  //16 SUBZONAS DENTRO DE CADA BASE

  int x, y;

  for (zona = 0; zona < zonas.length; zona++)
  {

    x = zonas[zona][0];
    x -= ancho_base * (3.0/4.0)/2.0;
    cont = 0;

    if (bases[zona] == true)
    {

      for (int i = 1; i <= 4; i++)
      {

        y = zonas[zona][1];
        y -= ancho_base * (3.0/4.0)/2.0;

        for (int j = 0; j < 4; j++)
        {
          
          //CUADRADOS QUE MARACAN LAS DIMENSIONES DE LAS SUBZONAS//
          
          
          pushMatrix();
           stroke(255, 0, 0);
           noFill();
           //fill(255, 0, 0);
           translate(x, y, zonas[zona][2] + alto_base);
           box(ancho_base / 4.0 - 5, largo_base / 4.0 - 5, alto_base);
           popMatrix();
           

          subzonas[zona][cont][0] = x;
          subzonas[zona][cont][1] = y;
          subzonas[zona][cont][2] = zonas[zona][2] + alto_base;

          y += ancho_base / 4.0;
          cont++;
        }

        x += ancho_base / 4.0;
      }
    }
  }
}
