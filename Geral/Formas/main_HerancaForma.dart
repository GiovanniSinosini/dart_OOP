import 'heranca_Forma.dart';

main(){


print("");
print("==========================================================");
print("");
Circulo c1 = new Circulo(3, 6.345664);
print("Círculo 1");
print(c1);
print("Lados: " + c1.NumLados());
print("Perimetro: ${c1.Perimetro(c1.Raio)}");
print("Area: ${c1.Area(c1.Raio)}");
print("");
print("==========================================================");
print("");

Quadrado q1 = new Quadrado(5, 7.66);
print("Quadrado 1");
print(q1);
print (q1.NumLados());
print("Perímetro: ${q1.Perimetro(q1.Comp_Lado)}");
print("Área: ${q1.Area(q1.Comp_Lado)}");
print("");
print("==========================================================");
print("");

Retangulo r1 = new Retangulo(9, 9.6, 5.4);
print("Retangulo 1");
print(r1);
print(r1.NumLados());
print("Perímetro: ${r1.Perimetro(r1.Comprimento)}");
print("Área: ${r1.Area(r1.Comprimento)}");
print("");
print("==========================================================");
print("");

}
