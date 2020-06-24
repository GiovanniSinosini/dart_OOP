import 'Agua.dart';
import 'Armazem.dart';
import 'Refrigerante.dart';

main(){

  Armazem armazem1 = new Armazem();

  Agua agua1 = new Agua(codigo: "agua1", quantidade: 20, preco: 0.5, marca: "Continente", origem: "Açores");
  Agua agua2 = new Agua(codigo: "agua2", quantidade: 10, preco: 0.3, marca: "Pingo Doce", origem: "Madeira");
  Agua agua3 = new Agua(codigo: "agua3", quantidade: 5, preco: 0.1, marca: "Rio", origem: "Porto");

  Refrigerante ref1 = new Refrigerante(codigo: "ref1", quantidade: 3, preco: 1, marca: "Coca", acucar: 50, promocao: true);
  Refrigerante ref2 = new Refrigerante(codigo: "ref2", quantidade: 4, preco: 0.8, marca: "Pepsi", acucar: 0, promocao: false);
  Refrigerante ref3 = new Refrigerante(codigo: "ref3", quantidade: 3, preco: 0.7, marca: "Tuba", acucar: 50, promocao: false);

  armazem1.adicionarBebida(agua1, "1");
  armazem1.adicionarBebida(agua2, "2");
  armazem1.adicionarBebida(agua3, "3");
  
  armazem1.adicionarBebida(ref1, "4");
  armazem1.adicionarBebida(ref2, "5");
  armazem1.adicionarBebida(ref3, "6");

  print("==============================================================");
  print("Preço total do armazem => ${armazem1.precoTotalBebida().toStringAsFixed(2)}");
  print("");

  print("======================= Preço por Marca  ==================================");
  print("Preço total armazenado da Pepsi => ${armazem1.precoTotalPorMarca("Rio")}");
  print("");
  
  print("======================= Preço por Prateleira  ==================================");
  print("Preço total da prateleira 1 => ${armazem1.precoTotalPorPrateleira("1", agua1)}");
  print("");
  

  print("======================= Lista Bebidas  ==================================");
  armazem1.mostrarInformacao();
  print("");
  print("==============================================================");

  armazem1.eliminarBebida("1", agua1);   


  armazem1.mostrarInformacao(); 
  
 
}