class figura {
  int _largo;
  int _ancho;
// Constructor
   figura(this._largo, this._ancho);

   void mostrar(){
     print("Largo: $_largo");
     print("Ancho: $_ancho");
   }// funcion mostrar
   void calcularArea(){
     print("Area: ${_largo * _ancho}");
   }// funcion calcularArea
   void calcularPerimetro(){
     print("Perimetro: ${2 * (_largo + _ancho)}");
   }// funcion calcularPerimetro   
} // clase figura

void main() {
  print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
  //crear objeto de la clase figura
  var rectangulo = figura(10, 5);
  //Moostrar los atributos del objeto
  rectangulo.mostrar();
  //Calcular el area del objeto
  rectangulo.calcularArea();
  //Calcular el perimetro del objeto
  rectangulo.calcularPerimetro();
} // fin de main