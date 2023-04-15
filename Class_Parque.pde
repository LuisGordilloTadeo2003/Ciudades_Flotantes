class Parque
{
  //PROPIEDADES
  int x;
  int y;
  int z;
  int tam_parque = ancho_base / 4 - 8;

  //CONSTRUCTORES
  Parque(int x, int y, int z)
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
    box(tam_parque, tam_parque, 1);
    popMatrix();
    pushMatrix();
    translate(this.x, this.y, this.z - alto_base * 0.5 + 1);
    fill(#38FF27);
    box(tam_parque - 2, tam_parque - 2, 1);
    popMatrix();
  }
}
