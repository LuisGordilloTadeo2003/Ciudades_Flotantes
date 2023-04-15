void estructuras()
{
  Edificio edificio;



  cont = 0;
  int edificio_cont=0;

  for (zona = 0; zona < zonas.length; zona++)
  {

    boolean[] posicion = new boolean[4];

    for (int i = 0; i > posicion.length; i++)
    {
      posicion[i]=false;
    }

    float probabilidad0 = 0.01;
    float probabilidad1 = 0.2 + probabilidad0;
    float probabilidad2 = 0.35 + probabilidad1;
    float probabilidad3 = 0.34 + probabilidad2;
    float probabilidad4 = 0.1 + probabilidad3;

    float probabilidades = random(1);
    if (probabilidades > 0 && probabilidades < probabilidad0)
    {
      numeroedificios=0;
    }
    if (probabilidades > probabilidad0 && probabilidades < probabilidad1)
    {
      numeroedificios=1;
    }
    if (probabilidades > probabilidad1 && probabilidades < probabilidad2)
    {
      numeroedificios=2;
    }
    if (probabilidades > probabilidad2 && probabilidades < probabilidad3)
    {
      numeroedificios=3;
    }
    if (probabilidades > probabilidad3 && probabilidades < probabilidad4)
    {
      numeroedificios=4;
    }

    edificio_cont=0;

    while ( bases[zona] && edificio_cont!=numeroedificios)
    {

      int colorrandom = floor(random(4));
      int rpos = floor(random(4));

      switch(rpos) {
      case 0:
        pos = 5;
        break;
      case 1:
        pos = 6;
        break;
      case 2:
        pos = 9;
        break;
      case 3:
        pos = 10;
        break;
      }

      switch(colorrandom)
      {
      case 0:
        color_random = #47B2EA;
        color_paredes = #405EFF;
        break;
      case 1:
        color_random = #5FFA4C;
        color_paredes = #2BCE17;
        break;
      case 2:
        color_random = #F5748E;
        color_paredes = #F02E55;
        break;
      case 3:
        color_random = #4BFFA0;
        color_paredes = #0FFF81;
        break;
      }

      if (!posicion[rpos])
      {
        edificio = new Edificio(subzonas[zona][pos][0], subzonas[zona][pos][1], subzonas[zona][pos][2]);

        pushMatrix();
        edificio.colocar();
        popMatrix();
        edificio.paredes();
        posicion[rpos] = true;
        edificio_cont++;
      }

      Parque parque;

      for (int i = 0; i < 16; i++)
      {
        int random = floor(random(3));
        if (random == 1 && i != 5 && i != 6 && i != 9 && i != 10)
        {
          parque = new Parque(subzonas[zona][i][0], subzonas[zona][i][1], subzonas[zona][i][2]);
          parque.colocar();
        }
      }

      Arboles arboles;

      for (int i = 0; i < 16; i++)
      {
        int random = floor(random(3));
        if (random == 1 && i != 5 && i != 6 && i != 9 && i != 10)
        {
          arboles = new Arboles(subzonas[zona][i][0], subzonas[zona][i][1], subzonas[zona][i][2]);
          arboles.colocar();
        }
      }

      Lago lago;

      for (int i = 0; i < 16; i++)
      {
        int random = floor(random(3));
        if (random == 1 && i != 5 && i != 6 && i != 9 && i != 10)
        {
          lago = new Lago(subzonas[zona][i][0], subzonas[zona][i][1], subzonas[zona][i][2]);
          lago.colocar();
        }
      }

      cont++;
    }
  }
}
