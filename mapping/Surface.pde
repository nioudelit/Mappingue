class Surface {

  PGraphics img;

  PVector a;
  PVector b;
  PVector c;
  PVector d;

  int w = defX;
  int h = defY;
  int posX, posY;
  int mX;//CENTRE IMG
  int mY;//CENTRE IMG
  int vit = 1;
  int xx, yy;
  int C = 0;
  int id;

  Surface(int x_, int y_) {
    xx = x_;
    yy = y_;
    img = createGraphics(defX, defY, P2D);
    //MODIFIER ABCD pour améliorer ajout création
    a = new PVector(xx, yy);
    b = new PVector(xx + w, yy);
    c = new PVector(w + xx, h + yy);
    d = new PVector(xx, h + yy);
  }

  //RENVOI LE NUMERO de l'OBJET
  int index(int i) {
    id = i;
    return i;
  }

  boolean dessus() {
    if (mouseX > a.x + TOL &&
      mouseX < a.x + TOL + 25 &&
      mouseY > a.y + TOL &&
      mouseY < a.y + TOL + 25) {
      fill(255, 255, 0);
      if(fond == false) rect(a.x + TOL, a.y + TOL, 25, 25);
      return true;
    } else {
      fill(0, 5, 0);
      if( fond == false) rect(a.x + TOL, a.y + TOL, 25, 25);
      return false;
    }
  }

  void afficher(int i) {
    fill(0);
    beginShape();
    if(fond){
      if(curseur == i || TOUS == true){
        texture(video);
      }
    } else {
      fill(255, 0, 255);
    }
    vertex(a.x, a.y, 0, 0);
    vertex(b.x, b.y, w, 0);
    vertex(c.x, c.y, w, h);
    vertex(d.x, d.y, 0, h);
    endShape();
    
    //COULEURS ET FORMES
    fill(255);
    if(fond == false){
      text( i, a.x + TOL, a.y + TOL);
      if( i == curseur){
        ellipse(a.x - 10, a.y - 10, 10, 10);
      }
    }
    //img.endDraw();
    //image(img, posX, posY);
    //println(a.x);
  }

  void deplacerPoints() {
    //A
    if (fond == false) {
      fill(255, 0, 0);
      ellipse(a.x, a.y, 10, 10);
      ellipse(b.x, b.y, 10, 10);
      ellipse(c.x, c.y, 10, 10);
      ellipse(d.x, d.y, 10, 10);
    }

    if (mouseX > a.x - TOL &&
      mouseX < a.x + TOL &&
      mouseY > a.y - TOL * 2 &&
      mouseY < a.y + TOL * 2) {
      fill(0, 255, 0);
      ellipse(a.x, a.y, 10, 10);
      if (mousePressed) {
        a.x = souris.x;
        a.y = souris.y;
      }
    }
    //B
    if (mouseX > b.x - TOL &&
      mouseX < b.x + TOL &&
      mouseY > b.y - TOL &&
      mouseY < b.y + TOL) {
      fill(0, 255, 0);
      ellipse(b.x, b.y, 10, 10);
      if (mousePressed) {
        b.x = souris.x;
        b.y = souris.y;
      }
    }
    //C
    if (mouseX > c.x - TOL &&
      mouseX < c.x + TOL &&
      mouseY > c.y - TOL &&
      mouseY < c.y + TOL) {
      fill(0, 255, 0);
      ellipse(c.x, c.y, 10, 10);
      if (mousePressed) {
        c.x = souris.x;
        c.y = souris.y;
      }
    }
    //D
    if (mouseX > d.x - TOL &&
      mouseX < d.x + TOL &&
      mouseY > d.y - TOL &&
      mouseY < d.y + TOL) {
      fill(0, 255, 0);
      ellipse(d.x, d.y, 10, 10);
      if (mousePressed) {
        d.x = souris.x;
        d.y = souris.y;
      }
    }
  }

  void deplacer(int i) {
    if (keyPressed) {
      if(curseur == i){
        C = 255;
        if (keyCode == UP) {
          posY -= vit;
          a.y -= vit;
          b.y -= vit;
          c.y -= vit;
          d.y -= vit;
        }
        if (keyCode == DOWN) {
          posY += vit;
          a.y += vit;
          b.y += vit;
          c.y += vit;
          d.y += vit;
        }
        if (keyCode == LEFT) {
          posX -= vit;
          a.x -= vit;
          b.x -= vit;
          c.x -= vit;
          d.x -= vit;
        }
        if (keyCode == RIGHT) {
          posX += vit;
          a.x += vit;
          b.x += vit;
          c.x += vit;
          d.x += vit;
        }
      } else {
        C = 0;
      }
    }
  }
  String positions(){
    String[] pos = new String[8];
    pos[0] = str(a.x);
    pos[1] = str(a.y);
    pos[2] = str(b.x);
    pos[3] = str(b.y);
    pos[4] = str(c.x);
    pos[5] = str(c.y);
    pos[6] = str(d.x);
    pos[7] = str(d.y) + "\n";
    String posCompresse = join(pos, " : ");
    return posCompresse;
  }
}