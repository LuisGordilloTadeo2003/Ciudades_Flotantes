class Lago
{
  //PROPIEDADES
  int x;
  int y;
  int z;
  int tam_lago = ancho_base / 4 - 8;

  //CONSTRUCTORES
  Lago(int x, int y, int z)
  {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  //METODOS
  void colocar()
  {
    pushMatrix();
    translate(this.x, this.y, this.z - alto_base * 0.5);
    fill(#6A6A6A);
    box(tam_lago, tam_lago, 1);
    popMatrix();
    pushMatrix();
    translate(this.x, this.y, this.z - alto_base * 0.5 + 1);
    fill(#2EA6FF);
    box(tam_lago - 2, tam_lago - 2, 1);
    popMatrix();
  }
}
