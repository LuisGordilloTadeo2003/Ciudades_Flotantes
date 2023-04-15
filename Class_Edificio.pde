class Edificio
{
  //PROPIEDADES
  int x, y, z;
  int tam_edificio = ancho_base / 4 - 8;
  int alto = 60;
  int color_edificio = color_random;

  //CONSTRUCTORES
  Edificio(int x, int y, int z)
  {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  //METODOS
  void colocar()
  {
    fill(color_random);
    translate(this.x, this.y, this.z + alto_base * 0.75);
    box(tam_edificio, tam_edificio, alto);
  }

  void paredes()
  {

    int xpared, ypared, zpared;

    for (zpared = 0; zpared <= alto; zpared += 2)
    {
      if (zpared % 3 == 0)
      {
        for (xpared = 0; xpared < tam_edificio; xpared += 2)
        {
          pushMatrix();
          noStroke();
          fill(color_paredes);
          translate(xpared + this.x - tam_edificio / 2 + 1, this.y + tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
          box(2);
          popMatrix();
        }
        for (xpared = 0; xpared < tam_edificio; xpared += 2)
        {
          pushMatrix();
          noStroke();
          fill(color_paredes);
          translate(xpared + this.x - tam_edificio / 2 + 1, this.y - tam_edificio / 2 - 1, zpared + this.z - alto_base * 0.75);
          box(2);
          popMatrix();
        }
        for (ypared = 0; ypared < tam_edificio; ypared += 2)
        {
          pushMatrix();
          noStroke();
          fill(color_paredes);
          translate(this.x + tam_edificio / 2 + 1, ypared + this.y - tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
          box(2);
          popMatrix();
        }
        for (ypared = 0; ypared < tam_edificio; ypared += 2)
        {
          pushMatrix();
          noStroke();
          fill(color_paredes);
          translate(this.x - tam_edificio / 2 - 1, ypared + this.y - tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
          box(2);
          popMatrix();
        }
      } else
      {
        int random;

        for (xpared = 0; xpared < tam_edificio; xpared += 2)
        {
          random = floor(random(5));
          if (random == 1)
          {
            pushMatrix();
            noStroke();
            fill(color_paredes);
            translate(xpared + this.x - tam_edificio / 2 + 1, this.y + tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
            box(2);
            popMatrix();
          }
        }
        for (xpared = 0; xpared < tam_edificio; xpared += 2)
        {
          random = floor(random(5));
          if (random == 1)
          {
            pushMatrix();
            noStroke();
            fill(color_paredes);
            translate(xpared + this.x - tam_edificio / 2 + 1, this.y - tam_edificio / 2 - 1, zpared + this.z - alto_base * 0.75);
            box(2);
            popMatrix();
          }
        }
        for (ypared = 0; ypared < tam_edificio; ypared += 2)
        {
          random = floor(random(5));
          if (random == 1)
          {
            pushMatrix();
            noStroke();
            fill(color_paredes);
            translate(this.x + tam_edificio / 2 + 1, ypared + this.y - tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
            box(2);
            popMatrix();
          }
        }
        for (ypared = 0; ypared < tam_edificio; ypared += 2)
        {
          random = floor(random(5));
          if (random == 1)
          {
            pushMatrix();
            noStroke();
            fill(color_paredes);
            translate(this.x - tam_edificio / 2 - 1, ypared + this.y - tam_edificio / 2 + 1, zpared + this.z - alto_base * 0.75);
            box(2);
            popMatrix();
          }
        }
      }
    }
  }
}
