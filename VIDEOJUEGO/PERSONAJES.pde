//clase y metodos de personajes
class Alfred extends caracteristicas{
  
 Alfred(int x_, int y_){
   super(x_,y_);
   x = x_;
   y = y_;
 }
   void display(){
     pushMatrix();
     translate(x,y);
     scale(0.1, 0.1);
     image(P1,x,y);
     popMatrix();
   }
   void display2(){
     pushMatrix();
     translate(x,y);
     scale(-0.1, 0.1);
     image(P1,x,y);
     popMatrix();
   }
}


class V extends caracteristicas{
  
 V(int x_, int y_){
   super(x_,y_);
   x = x_;
   y = y_;
 }
   void display(){
     pushMatrix();
     translate(x,y);
     scale(0.1, 0.1);
     image(P2,x,y);
     popMatrix();
   }
   void display2(){
     pushMatrix();
     translate(x,y);
     scale(-0.1, 0.1);
     image(P2,x,y);
     popMatrix();
   }
}


class Verdugo extends caracteristicas{
  
 Verdugo(int x_, int y_){
   super(x_,y_);
   x = x_;
   y = y_;
 }
   void display(){
     pushMatrix();
     translate(x,y);
     scale(0.1, 0.1);
     image(P3,x,y);
     popMatrix();
   }
   void display2(){
     pushMatrix();
     translate(x,y);
     scale(-0.1, 0.1);
     image(P3,x,y);
     popMatrix();
   }
}

class Hechicera extends caracteristicas{
  
 Hechicera(int x_, int y_){
   super(x_,y_);
   x = x_;
   y = y_;
 }
   void display(){
     pushMatrix();
     translate(x,y);
     scale(0.1, 0.1);
     image(P4,x,y);
     popMatrix();
   }
   void display2(){
     pushMatrix();
     translate(x,y);
     scale(-0.1, 0.1);
     image(P4,x,y);
     popMatrix();
   }
}


class Arquitecto extends caracteristicas{
  
 Arquitecto(int x_, int y_){
   super(x_,y_);
   x = x_;
   y = y_;
 }
   void display(){
     pushMatrix();
     translate(x,y);
     scale(0.1, 0.1);
     image(P5,x,y);
     popMatrix();
   }
   void display2(){
     pushMatrix();
     translate(x,y);
     scale(-0.1, 0.1);
     image(P5,x,y);
     popMatrix();
   }
}
