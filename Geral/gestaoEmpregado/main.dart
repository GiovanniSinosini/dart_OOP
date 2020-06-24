import 'Comercial.dart';
import 'Empregado.dart';
import 'Empresa.dart';
import 'Gestor.dart';
import 'Motorista.dart';
import 'Normal.dart';

void main(){
Empresa apple = new Empresa(0.15, 0.36, 0.01);

Gestor emp1 = new Gestor("Giovanni", 001, 365, 5000, 0.15);
Gestor emp2 = new Gestor("João", 002, 252, 6024, 0.15);
Gestor emp3 = new Gestor("Lucio", 003, 232, 3500, 0.15);

Motorista mot1 = new Motorista("Fran", 004, 365, 3500, 6000, 0.36);
Motorista mot2 = new Motorista("May", 005, 165, 3648, 2523, 0.36);
Motorista mot3 = new Motorista("April", 006, 248, 3425, 3520, 0.36);
Motorista mot4 = new Motorista("Marron", 007, 365, 3789, 8000, 0.36);

Comercial com1 = new Comercial("Ang", 008, 364, 5655, 20000, 0.01);
Comercial com2 = new Comercial("Susy", 009, 565, 4231, 110000, 0.01);

Normal nor1 = new Normal("Manuel", 010, 056, 1500);

apple.Add_Empregado(emp1);   // adicionar empregados na lista da empresa
apple.Add_Empregado(emp2);
apple.Add_Empregado(emp3);

apple.Add_Empregado(mot1);
apple.Add_Empregado(mot2);
apple.Add_Empregado(mot3);
apple.Add_Empregado(mot4);

apple.Add_Empregado(com1);
apple.Add_Empregado(com2);

apple.Add_Empregado(nor1);

print("");
print("=================================================");
print("Lista de empregados: ");
print("");
apple.Imprimir_Lista_Empregados();
print("");
print("=================================================");
print("");

apple.FolhaPagamento();
print("");
print("=================================================");
print("");

print("Consulta ficha colaborador:");
print("");
apple.Obter_Ficha(8);

print("");
print("=================================================");
print("");

apple.Total_Categoria();

print("");
print("=================================================");
print("");

print("Consultar situação do colaborador:");
print("");
apple.Verificar_Empregado(1);
print("");
apple.Verificar_Empregado(11);

print("");
print("=================================================");


}