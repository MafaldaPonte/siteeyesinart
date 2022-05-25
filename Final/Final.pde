
// Carrega para ver mais 
int num = 70;
float mx[] = new float[num];
float my[] = new float[num];

boolean overButton = false;

void setup() {
  size(640, 360);
    fill(255, 153); 
}

void draw() {
  background(#dadada);
 int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  
   for (int i = 0; i < num; i++) {
   
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
    fill(255);
    
    
    
  } 
  
  if (overButton == true) {
    fill(#FF0808);
  } else {
    noFill();
  }
  rect(450, 140, 120, 120); //localização do rectangulo 
  line(135, 105, 155, 85);
  line(140, 85, 155, 85);
  line(155, 85, 155, 100);
}

void mousePressed() {
  if (overButton) { 
    link("file:///C:/Users/mafal/OneDrive/Ambiente%20de%20Trabalho/TecnologiasDosNovosMedia2/site.html"); // alteração do site é feita aqui
   
  }
}

void mouseMoved() { 
  checkButtons(); 
}
  
void mouseDragged() {
  checkButtons(); 
}

void checkButtons() {
  if (mouseX > 105 && mouseX < 180 && mouseY > 60 && mouseY <150) {
    overButton = true;   
  } else {
    overButton = false;
  }
}
