class Peixe 
{
  float pos[] = new float[2]; //guarda a posição do peixe
  float rotation; //é a rotacao do peixe
  int rabo_peixe[] = new int[6]; //faz o rabo do peixe
  int raio[] = new int[2]; //faz o corpo do peixe
  int eye_raio[] = new int[2]; //olho do peixe
  float xac, yac;
  color cor; //guarda a cor do peixe

  public Peixe(float xpos,  float ypos, int[] rabo, int[] barriga, int[] olho, color cor, float xac, float yac) 
  {
    this.pos[0] = xpos;
    this.pos[1] = ypos;
    this.cor = cor;
    this.xac = xac;
    this.yac = yac;

    for(int i = 0; i < 6; i++) 
    {
      this.rabo_peixe[i] = rabo[i];
    }
    for(int i = 0; i < 2; i++) 
    {
      this.raio[i] = barriga[i];
    }
    for(int i = 0; i < 2; i++) 
    {
      this.eye_raio[i] = olho[i];
    }

  }

  public void Desenha() 
  {
    rotation = atan2(xac, yac);
    rotation = rotation * 180/PI; 
    pos[0] += xac;
    pos[1] += yac;
    pushMatrix();
    translate(pos[0], pos[1]);
    rotate(radians((90 - rotation)));

    fill(cor);
    noStroke();

    ellipse(0, 0, raio[0], raio[1]);
    triangle(rabo_peixe[0] - 80, rabo_peixe[1] + 40, rabo_peixe[2] - 80, rabo_peixe[3] - 40, -rabo_peixe[4] - 20, rabo_peixe[5]);

    fill(100, 100, 100);
    stroke(20, 20, 20);

    ellipse(20, -10, eye_raio[0], eye_raio[1]);

    popMatrix();
  }
  
  public void Move() 
  {
    float myx = pos[0] - width/2;
    float myy = pos[1] - height/2;
    int vara = 5;
    if(myx > width/vara || myx < -width/vara) {
      xac -= 35/myx;
    }
    
    if(myy > height/vara || myy < -height/vara) { 
      yac -= 35/myy;
    }

    Desenha();
  }
  
  
}
