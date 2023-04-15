class Arboles
{
  //PROPIEDADES
  int x;
  int y;
  int z;
  int tam_base_arboles = ancho_base / 4 - 8;

  //CONSTRUCTORES
  Arboles(int x, int y, int z)
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
    box(tam_base_arboles, tam_base_arboles, 1);
    popMatrix();
  }
}
