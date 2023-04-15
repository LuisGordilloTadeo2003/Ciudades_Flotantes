void nubes()
{
  for (zona = 0; zona < zonas.length; zona++)
  {
    if (bases[zona] == true)
    {
      int alt_nube = floor(random(40, 65));
      int random = floor(random(2));

      if (random == 0)
      {
        for (int i = 0; i < 3; i++)
        {
          pushMatrix();
          fill(random(200, 255), 130);
          translate(zonas[zona][0] + random(-30, 30), zonas[zona][1] + random(-30, 30), zonas[zona][2] + alt_nube);
          box(random(20, 60) - i * random(3, 4), random(20, 60) - i * random(3, 4), 6);
          popMatrix();
        }
      }
    }
  }
}
