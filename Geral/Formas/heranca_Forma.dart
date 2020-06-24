import 'dart:ffi';

import 'Retangulo.dart';

class Forma{
  int _cor;


  //getters and setters

  get Cor => _cor;

  set Cor (int cor) => _cor;

  // Construtor

  Forma(this._cor);

  // métodos

  String NumLados() =>  "9999";
  double Perimetro(double raio) => 9999;
  double Area(double raio) => 9999;

@override
  String toString() {
     return "cor: $Cor";
  }




}

class Circulo extends Forma{
  
  double _raio;
  

// getters and setters

get Raio => _raio;

set Raio (double raio) => _raio;

// construtor

Circulo (int cor, double raio) : super(cor){
  this._raio = raio;
}

// métodos

@override
String NumLados() => "Não aplicável";

@override
double Perimetro(double raio) => double.parse(((3.14 * raio)*2).toStringAsPrecision(2));

@override
double Area(double raio) => double.parse((3.14*(raio*raio)).toStringAsPrecision(2));

@override
  String toString() {
    
    return super.toString() + ", Raio: $_raio";
  }

}


class Quadrado extends Forma{
  double _comp_Lado;


//getter and setter

get Comp_Lado => _comp_Lado;

set Comp_Lado (double comp) => _comp_Lado = comp ?? 0.0;


// construtor

Quadrado(int cor, double compLado) : super(cor){
  Comp_Lado = compLado;

}

// Métodos

@override
String NumLados() => "Possui 4 lados";

@override
double Perimetro(double compLado) => double.parse((compLado * 4).toStringAsPrecision(2));

@override
double Area(double compLado) => double.parse((compLado * compLado).toStringAsPrecision(2));


@override
  String toString() {
    
    return super.toString() + ", Comprimento do lado: $_comp_Lado";
  }
}

class Retangulo extends Forma{
  double _comprimento;
  double _altura;


//getter and setter

get Comprimento => _comprimento;
get Altura => _altura;

set Comprimento (double comprimento) => _comprimento = comprimento ?? 0.0;
set Altura (double altura) => _altura = altura ?? 0.0; 


// construtor

Retangulo(int cor, double comprimento, double altura) : super(cor){
  Comprimento = comprimento;
  Altura = altura;

}

// Métodos

@override
String NumLados() => "Possui 4 lados";

@override
double Perimetro(double comprimento) => double.parse((2*(comprimento + Altura)).toStringAsPrecision(4));

@override
double Area(double comprimento) => double.parse((comprimento * this.Altura).toStringAsPrecision(4));


@override
  String toString() {
    
    return super.toString() + ", Comprimento: $Comprimento, Altura: $Altura";
  }
}

