import 'Produto.dart';
import 'Empresa.dart';
//ficha 6 1
main(){

Empresa empresa1 = new Empresa("Empresa1");

Produto p1 = new Produto(codigo: 1, descricao: "Bolo chocolate", quantStock: 1, quantMinStock: 5);
Produto p2 = new Produto(codigo: 2, descricao: "Bolo amora", quantStock: 19, quantMinStock: 5);
Produto p3 = new Produto(codigo: 3, descricao: "Bolo jaca", quantStock: 21, quantMinStock: 5);
Produto p4 = new Produto(codigo: 4, descricao: "Bolo uva", quantStock: 10, quantMinStock: 5);
Produto p5 = new Produto(codigo: 5, descricao: "Bolo limão", quantStock: 9, quantMinStock: 5);


empresa1.addProdStock2(p1);
empresa1.addProdStock2(p2);
empresa1.addProdStock2(p3);  // método para adicionar ao Map stock
empresa1.addProdStock2(p4);
empresa1.addProdStock2(p5);   

print("=====================================================");
print("Lista de códigos em stock (keys)");
empresa1.listarCodigos();  // método listar keys do map
print("=====================================================");

print("Removendo item do Stock(Map)");
print(empresa1.remProdStock(5));   // metodo para remover item do Map
empresa1.listarCodigos();
print("=====================================================");

print("Alterando stock de determinado produto");
print(empresa1.alteraStockProd(p4, 10));  // metodo para alterar stock
print(p4);  // print para provar que houve alteração
print("=====================================================");

print("Verificando stocks");
print(empresa1.quantStock());  // método para verificar stock
print("=====================================================");

print("Consultar existência do produto");
print(empresa1.consultaProd(5)); // método para verificar existência do produto
print("=====================================================");

print("Copiando stock");
print(empresa1.copiaStock(empresa1.stock));  // método para cópia do Map stock
print("=====================================================");

print("Imprimindo informações sobre determinado produto");
print(empresa1.imprimiProd(1));
print("=====================================================");


}