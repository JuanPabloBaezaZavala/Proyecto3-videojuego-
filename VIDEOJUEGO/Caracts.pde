//caracts globales de personajes
class caracteristicas{
  int x;
  int y;
  int t;
  float v;
  
 caracteristicas(int x_, int y_){
    x = x_;
    y = y_;
    this.t = 10;
    this.v = 10;
  }

  void desplace(int m_) {
    switch(m_) {
    case 0:
      this.y -= this.v;
      break;
    case 1:
      this.x += this.v;
      break;
    case 2:
      this.x -= this.v;
      break;
    case 3:
      this.y += this.v;
      break;
    }
  }
  
  
  void limites() {
    this.x = constrain(this.x, 0, 340-this.t);
    this.y = constrain(this.y, 260, 350-this.t);
  }
    void limites2() {
    this.x = constrain(this.x, 600, 1000-this.t);
    this.y = constrain(this.y, 260, 350-this.t);
  }
 }
  
