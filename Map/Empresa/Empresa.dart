import 'Produto.dart';
//ficha 6 1
class Empresa{

  //atributos

  String _name;
  Map<int, Produto> stock; 
    

  // getters and setters


  get Name => _name;

  set Name (String name)=> _name = name ?? null;


//contrutor

Empresa(String name){
  Name = name;
  stock = Map();
  
  

}


// methods


void listarCodigos(){
  print(stock.keys);

  
}

void addProdStock2(Produto produto){
    stock[produto.Codigo] = produto;
}

String remProdStock(int codigo){
  String msg = "Produto $codigo removido do stock com sucesso.";
  String msg2 = "Produto NÃO encontrado em stock.";

  if (stock[codigo] != null){
    stock.remove(codigo);
    return msg;
  } else{
    return msg2;
  }
}

String alteraStockProd(Produto produto, int quantidade){     // metodo para alterar stock
  stock[produto.Codigo].QuantStock += quantidade;
  if (produto.QuantStock < produto.QuantMinStock ){
      print("Produto de código ${produto.Codigo}, (${produto.Descricao}) está com Stock baixo. Por favor regularize a situação. O estoque deve maior que ${produto.QuantMinStock}");
      
    }
  return "Stock alterado com sucesso";
}

String quantStock(){
  int quantTotal = 0;
  /*
  for (var item in stock.values) {
    print("Produto_ ${item.Codigo}, ${item.Descricao}, quantidade Stock: ${item.QuantStock}");
    quantTotal += item.QuantStock;
  }*/

  for (var i = 1; i <= stock.length; i++) {
      print("Produto: ${stock[i].Codigo}, ${stock[i].Descricao}, quantidade stock: ${stock[i].QuantStock}" );
      quantTotal += stock[i].QuantStock; 
    }
    return "Quantidade total em stock é $quantTotal";
  }

String consultaProd(int codigo){
  
  if (stock[codigo] != null){
    return "Produto $codigo existe.";
    } else{
      return "Código não existente em stock.";
    }
  }

Map copiaStock(Map stock){
  Map <int, Produto> newMaq = Map();

  newMaq.addAll(stock);

  return newMaq;

  }

String imprimiProd(int codigo){
  if (stock[codigo] != null){
    return "${stock[codigo]}"; 
  } else{
      return "Produto NÃO existe";
    }
  }
}


