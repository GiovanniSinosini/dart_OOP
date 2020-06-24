
import 'Eletrodomestico.dart';
import 'MaquinaLavarRoupa.dart';
import 'Televisao.dart';


// metodo para imprimir a lista
void listarCompra(List<Eletrodomestico> compras){

print("========== Lista de Compras ===========");
print("");
int produto1 = 1; 
for (var item in compras){
  print("Produto $produto1 = $item");
  produto1++;
}
print("");

}

// Preco final dos produtos, total e impressão
void precoFinal(List<Eletrodomestico> compras){
print("========= Preço total por produto ======== ");
double precoTotal = 0.0;
int produto = 1;
for (var item in compras){
  precoTotal += item.precoFinal();
  print("$produto = ${item.precoFinal()}");
  produto++;
}
print("Preço TOTAL da compra => $precoTotal");

print("");
}

// valor por tipo de produto

double valorPorTipo(List<Eletrodomestico> compras, String eletr){

double somaeltr = 0.0;
for (var item in compras){
  if (item.runtimeType.toString() == eletr){
    somaeltr += item.precoFinal();
  }
}
return somaeltr; 
}


void main() {
  
List<Eletrodomestico> compras = new List<Eletrodomestico>();

Eletrodomestico eletro1 = new Eletrodomestico(precoBase: 200.00, cor: "branco", consumo: "A", peso: 35.00);
Eletrodomestico eletro2 = new Eletrodomestico(precoBase: 400.00, cor: "preto", consumo: "C", peso: 20.00);
Eletrodomestico eletro3 = new Eletrodomestico(precoBase: 150.00, cor: "azul", consumo: "A", peso: 15.00);

MaquinaLavarRoupa maq1 = new MaquinaLavarRoupa(precoBase: 250.00, cor: "vermelho", consumo: "B", peso: 45.00, carga: 8);
MaquinaLavarRoupa maq2 = new MaquinaLavarRoupa(precoBase: 300.00, cor: "branco", consumo: "F", peso: 48.00, carga: 7);
MaquinaLavarRoupa maq3 = new MaquinaLavarRoupa(precoBase: 350.00, cor: "preto", consumo: "D", peso: 49.00, carga: 9);

Televisao tv1 = new Televisao(precoBase: 550.00, cor: "preto", consumo: "A", peso: 30.00, resolucao: 49, tdt: true);
Televisao tv2 = new Televisao(precoBase: 430.00, cor: "branco", consumo: "B", peso: 25.00, resolucao: 32, tdt: false);
Televisao tv3 = new Televisao(precoBase: 350.00, cor: "azul", consumo: "C", peso: 32.00, resolucao: 49, tdt: true);
Televisao tv4 = new Televisao(precoBase: 300.00, cor: "preto", consumo: "A", peso: 24.00, resolucao: 24, tdt: false);

compras.add(eletro1.clone());
compras.add(eletro2.clone());
compras.add(eletro3.clone());

compras.add(maq1.clone());
compras.add(maq2.clone());
compras.add(maq3.clone());

compras.add(tv1.clone());
compras.add(tv2.clone());
compras.add(tv3.clone());
compras.add(tv4.clone());

// imprimir lista de compras
listarCompra(compras);

// imprimir PreçoTotal
precoFinal(compras);

// valor por tipo de produto

print("Preco total para Eletrodomestico => ${valorPorTipo(compras, "Eletrodomestico")}");
print("Preco total para Maquina de Lavar => ${valorPorTipo(compras, "MaquinaLavarRoupa")}");
print("Preco total para Televisão => ${valorPorTipo(compras, "Televisao")}");


}