void decoraciones()
{
  for (zona = 0; zona < zonas.length; zona++)
  {

    Parque parque;

    for (int i = 0; i < 16; i++)
    {
      int random = floor(random(20));
      if (random == 1 && i != 5 && i != 6 && i != 9 && i != 10)
      {
        parque = new Parque(subzonas[zona][i][0], subzonas[zona][i][1], subzonas[zona][i][2]);
        parque.colocar();
      }
    }

    Arboles arboles;

    for (int i = 0; i < 16; i++)
    {
      int random = floor(random(20));
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
  }
}
