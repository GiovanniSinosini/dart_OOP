
import 'Produto3.dart';


class MaqVenda2{


//atributos
Map<String, Produto3> _maquina;

num _totalCompras;
num _totalDinheiro;
String _tipoProduto;


// getters and setters

 
 num get TotalCompras => _totalCompras;

 set TotalCompras(num value) => _totalCompras = value ?? 0.0;

 num get TotalDinheiro => _totalDinheiro;

 set TotalDinheiro(num value) => _totalDinheiro = value ?? 0.0;

 String get TipoProduto => _tipoProduto;

 set TipoProduto(String value) => _tipoProduto = value ?? 0.0;

get Maquina2{
  Map<String, Produto3> copia = new Map<String, Produto3>();
  copia.addAll(_maquina);
  return copia;
}

set Maquina2(Map<String, Produto3> newProduto){

  if (_maquina == null){
    _maquina = Maquina(Map<String, Produto3>());
    _maquina.addAll(newProduto);
  } else{
    _maquina.addAll(newProduto);
  }

}




  get Maquina{
    Map<String, Produto3> copia = new Map<String, Produto3>();
      copia.addAll(_maquina);
      return copia;
  }

  set Maquina (Map<String, Produto3> newProduto){
    
    if (_maquina == null){
      _maquina = new Map<String, Produto3>();
      _maquina.addAll(newProduto);
    }else{
      _maquina.addAll(newProduto);
    }
 
  }

// Constructor


MaqVenda2({Map<String, Produto3> maquina, num totalCompras, num totalDinheiro, String tipoProduto}){

  Maquina = maquina;
  TotalCompras = totalCompras;
  TotalDinheiro = totalDinheiro;
  TipoProduto = tipoProduto;

}

// methods

void inserirProduto(Produto3 newProduto) => _maquina[newProduto.Nome] = newProduto;


Produto3 infoProduto(String nome) => _maquina[nome];

List<String> tabelaProduto(){
  List<String> tabela = List<String>();
  
  _maquina.forEach((key, value){
    tabela.add(value.toString());
  });
  return tabela;
}

int numProdutos() => _maquina.length;

bool existeNaMaquina(String nomeProduto) => _maquina.containsKey(nomeProduto);

bool ePossivelComprar(String nomeProduto) => existeNaMaquina(nomeProduto) && _maquina[nomeProduto].Quantidade > 0;

void compra(String nomeProduto, double aPagar){

 if (ePossivelComprar(nomeProduto)){

   Produto3 p = _maquina[nomeProduto];
   p.Quantidade -= 1;
   TotalDinheiro += aPagar;
   TotalCompras += 1;

 }

}

void precoProduto (String nomeProduto, num newValue) => _maquina[nomeProduto].Preco = newValue; 

bool produtoPoderSerIntroduzido(String nomeProduto) => !existeNaMaquina(nomeProduto);

String infoProdutoEmTexto(){

  String res = " ================= Lista Produtos ====================\n";

  for (var produto in _maquina.values) {
    res += produto.toString() + "\n";
  }
  res += "======================= FIM ========================";
  return res;

}

List<String> esgotados(){
  List<String> esgotados = new List<String>();

  for (var produto in _maquina.values) {
    if (produto.Quantidade == 0){
      esgotados.add(produto.Nome);
    }
  }
  return esgotados;

}

List<String> listaProdutoPrecoInferior(double value){
  List<String> listaProdutos = new List<String>();

  for (var produto in _maquina.values) {
    if (produto.Preco < 1.0){
      listaProdutos.add(produto.Nome);
    }
  }
  return listaProdutos;

}




@override
  String toString() {
    String s = "$TipoProduto\nTotal de compras => $TotalCompras\n Total em dinheiro => $TotalDinheiro EUR";

    return s;










  
}
}