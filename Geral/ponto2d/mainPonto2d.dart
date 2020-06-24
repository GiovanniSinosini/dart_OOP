import 'dart:io';

import 'ponto2d.dart';


void main(){
  
  print("Digite o valor de X do ponto1:");
  var x1 = double.parse(stdin.readLineSync());
  print("Digite o valor de Y do ponto1:");
  var y1 = double.parse(stdin.readLineSync());

  print("Digite o valor de X do ponto2:");
  var x2 = double.parse(stdin.readLineSync());
  print("Digite o valor de Y do ponto2:");
  var y2 = double.parse(stdin.readLineSync());


Ponto2d ponto1 = new Ponto2d(name: "Ponto1", x: x1, y: y1);
Ponto2d ponto2 = new Ponto2d(name: "Ponto2", x: x2, y: y2);


print(ponto1);
print(ponto2);


Ponto2d ponto3 = ponto1.Clone();

print(ponto3);

ponto1.incCoord(5, 5);
print(ponto1);

print("Decréscimo");
ponto1.decCoord(6, 6);
print(ponto1);


ponto1.somaPonto(ponto2);
print(ponto1);

Ponto2d ponto4 = ponto1.somaPonto2("Ponto4",2, 2);
print(ponto4);

ponto1.simetrico(ponto1);
ponto2.simetrico(ponto2);

ponto2.coordPos(ponto2);

ponto2.igual(ponto1);

}
