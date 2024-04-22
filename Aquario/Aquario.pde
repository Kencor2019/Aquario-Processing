Peixe[] fish = new Peixe[10];

void setup() 
{
  size(1800, 900);
  frameRate(70);
  background(120, 120, 200);

  for(int i = 0; i < fish.length; i++) 
  {
      int[] rabo = new int[6];
      for(int d = 0; d < 6; d++) 
      {
        rabo[d] = int(random(-10,10));
      }

      int[] barriga = new int[2];
      for(int d = 0; d < 2; d++) 
      {
        barriga[d] = int(random(80, 120));
      }

      int[] olho = new int[2];
      for(int d = 0; d < 2; d++) 
      {
        olho[d] = int(random(10,15));
      }
      
      color cor = color(random(0, 255), random(0, 255), random(0, 255));
      
      fish[i] = new Peixe(random(100, width-100), random(100, height-100), rabo, barriga, olho, cor, random(35, 210)/frameRate, random(35, 210)/frameRate);

  }
  
}



void draw() 
{
  background(120, 120, 200);
  
  for(int i = 0; i < fish.length; i++) 
  {
    fish[i].Move();
  }  
}
