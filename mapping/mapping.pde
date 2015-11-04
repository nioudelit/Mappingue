//https://processing.org/reference/ArrayList.html
//http://wiki.t-o-f.info/Processing/ArrayList
//http://codelab.fr/4543

//AMELIORER AJOUT
//AJOUTER SUPPRESSION
//AJOUTER SAUVEGARDE POINTS (FICHIER TEXTE)
//AMELIORER ERGO
//DEFINIR TAILLES
//ACCES POINTS HORS DU CHAMP

import processing.video.*;

//JUSQU'A 5 SURFACES
Capture video;

//SAUVEGARDE
PrintWriter output;

//Surface[] surface = new Surface[1];
ArrayList <Surface> surface = new ArrayList<Surface>();
int total;

PVector souris;
int TOL = 20;

boolean fond = false;
boolean ajout = false;

int curseur;
boolean TOUS = false;
int numero;
int defX = 160; // 160, 320, 640, 1280
int defY = 120; // 240, 8

boolean effet = false;
//// a faire seuils PARAMETRABLE
int seuilBlanc = 200;
int seuilNoir = 127;

void settings(){
  //size(1280, 720, P2D);
  fullScreen(P2D, 1);
}

void setup(){
  noStroke();
  String[] cameras = Capture.list();
  for(int i = 0; i < cameras.length; i++){
    println( i + "    " + cameras[i]);
  }
  video = new Capture(this, defX, defY, cameras[0]);
  video.start();
  souris = new PVector(0, 0);
  
  output = createWriter("sauvegarde.txt");
  
  //ARRAYLIST
  textSize(18);
  surface.add(new Surface(0, 0));
}

void draw(){
  total = surface.size();
  
  //FOND
  if(fond){
     background(0);
     noCursor();
  } else {
    background(0, 0, 255);
    cursor();
    fill(255, 200);
    ellipse(mouseX, mouseY, 100, 100);
  }

  if(fond == false){
    if(ajout){
      background(130, 0, 0);
      text("VOUS ETES EN MODE AJOUT", width/2, 60);
    } else {
      text("EN MODE MODIFICATION", width/2, 60);
    }
    //TEXTE ET CONTROLE
    fill(255);
    text("VOUS CONTROLEZ LA SURFACE N° " + curseur , width - 400, 100);
  }
  
  souris.x = mouseX;
  souris.y = mouseY;
  
  seuilBlanc = int(map(mouseX, 0, width, 0, 255));
  
  //ACQUISITION
  if(video.available()){
    video.read();
    if(effet){
      video.loadPixels();
      for(int i = 0; i < video.pixels.length; i++){
        if(red(video.pixels[i]) > seuilBlanc 
        && green(video.pixels[i]) > seuilBlanc
        && blue(video.pixels[i]) > seuilBlanc){
          video.pixels[i] = color(0);
        } else if(red(video.pixels[i]) < seuilNoir 
        && green(video.pixels[i]) < seuilNoir
        && blue(video.pixels[i]) < seuilNoir){
          video.pixels[i] = color(255);
        }
      }
      video.updatePixels();
    }
  }
  
  for(int i = 0; i < surface.size(); i++){
    Surface surf = surface.get(i);
    surf.afficher(i);
    surf.dessus();
    if(surf.dessus()){
      if(keyPressed){
        if(key == 'x'){
          surface.remove(surf.index(i));
        }
      }
    }
    
    surf.deplacerPoints();
    surf.deplacer(i);
  }
}

void keyReleased(){
  if(key == 'f'){
      fond =! fond;
   }
   if(key == 'a'){
     ajout =! ajout;
   }
   if(key == 't'){
     TOUS =! TOUS;
   }
   if(key == 'l'){
     if(curseur > 0){
       curseur -= 1;
     }
   }
   if(key == 'm'){
     if(curseur < surface.size() - 1){
       curseur += 1;
     }
   }
   if(key == 'e' || key == 'E'){
     effet =! effet;
   }
   //ECRITURE SAUVEGARDE
   if(key == 's'){
     for(int i = 0; i < surface.size(); i++){
       Surface surf = surface.get(i);
       output.println(surf.positions());
       fill(10, 150, 10);
       rect(0, 0, width, height);
     }
   }
   if(key == 'S'){
     output.println("Sauvegarde effectuée à " + hour() + "h" + minute() + " et " + second() + " secondes");
     output.flush();
     output.close();
   }
}

void mouseReleased(){
  if(ajout){
    surface.add(new Surface(mouseX, mouseY));
    ajout =! ajout;
  }
}