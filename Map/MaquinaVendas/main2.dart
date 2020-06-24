import 'MaqVenda2.dart';
import 'Produto3.dart';

main(){

  Map<String, Produto3> produtos = new Map<String, Produto3>();

  Produto3 p1 = new Produto3(codigo: "1111", name: "Cola", preco: 2.5, quantidade: 3);
  Produto3 p2 = new Produto3(codigo: "2222", name: "Pepsi", preco: 1.5, quantidade: 20);
  Produto3 p3 = new Produto3(codigo: "3333", name: "Tuba", preco: 6.5, quantidade: 15);
  Produto3 p4 = new Produto3(codigo: "4444", name: "Fanta", preco: 0.5, quantidade: 11);
  Produto3 p5 = new Produto3(codigo: "5555", name: "Maça", preco: 0.8, quantidade: 8);


  produtos[p1.Nome] = p1.clone();
  produtos[p2.Nome] = p2.clone();
  produtos[p3.Nome] = p3.clone();
  produtos[p4.Nome] = p4.clone();
  
  MaqVenda2 maqVenda = new MaqVenda2(maquina: produtos, tipoProduto: "bebida");

  
  print(maqVenda.infoProduto("Cola"));
  print(maqVenda.infoProduto("Fanta"));

print("");
for (var item in maqVenda.tabelaProduto()) {
  print(item);
} 
  
  print("");
  print("There are ${maqVenda.numProdutos()} different products");

maqVenda.compra("Cola", 2.5);
maqVenda.compra("Cola", 2.5);
maqVenda.compra("Cola", 2.5);
maqVenda.compra("Fanta", 1.5);
maqVenda.compra("Fanta", 1.5);
maqVenda.compra("Tuba", 1.5);


for (var item in maqVenda.tabelaProduto()) {
  print(item);
} 

print("====================================");
print(maqVenda);

maqVenda.precoProduto("Tuba", 0.35);


maqVenda.inserirProduto(p5);



for (var item in maqVenda.tabelaProduto()) {
  print(item);
} 

print("");
print(maqVenda.infoProdutoEmTexto());

print("Produtos esgotados => " + maqVenda.esgotados().toString());
print("Products with a value less than 1.0: " + maqVenda.listaProdutoPrecoInferior(1.0).toString());


}