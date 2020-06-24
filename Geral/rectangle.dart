/**
 * 1) Crie uma classe Rectângulo com os atributos largura e
comprimento (inteiros, com o valor 1 por omissão, com o valor
máximo de 20). Crie dois construtores, um vazio e um que aceite
como parâmetros os dois valores. Crie métodos que retornem o
perímetro e a área. Crie um método quadrado() que retorne um
valor booleano indicando se é um quadrado. Crie um método
escreveRetangulo() indicando as dimensões do rectângulo numa
string. Crie as propriedades de acordo com as restrições
referidas. Teste a classe e todos os métodos.
 */

class Rectangle{
  int width;
  int length;

// getters and setters

get Length => length;
get Width => width;

set Length (int value){
  length = value >= 0 && value <=20 ? value : 1;  // if not, the default value is 1
}

set Wigth (int value) => width = value >= 0 && value <=20 ? value : 1;



// Constructors

Rectangle ({int width, int length}){
  Wigth = width ?? 1;    //  // call the set's  - if the constructor is empty, the value is 1
  Length = length ?? 1;

}

// Methods

int perimeter() => 2 * width + 2 * length;
int area() => width * length;
bool isSquare() => width == length;

// ToString

String writeRect() => "\nWidth => $width\nLength => $length";

@override
String toString() => "\nWidth => $width\nLength => $length";

}
void main() {

  Rectangle r1 = new Rectangle();
  print("R1: ${r1}");
  print("R1: Perimeter -> ${r1.perimeter()}");
  print("R1: Area -> ${r1.area()}");
  if (r1.isSquare()){
    print("It's square");
  }

  Rectangle r2 = new Rectangle(length: 3, width: 2);
  print("\nR2: ${r2}");
  print("R2: Perimeter -> ${r2.perimeter()}");
  print("R2: Area -> ${r2.area()}");
  if (r2.isSquare()){
    print("It's square");
  } else{
    print("It's not square");
  }




}

