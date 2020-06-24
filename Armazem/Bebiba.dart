class Bebiba{

// atributos


  String _codigo;
  num _quantidade;
  num _preco;
  String _marca;
 


// getters and setters

String get Codigo => _codigo;

 set Codigo(String value) => _codigo = value ?? "";

 num get Quantidade => _quantidade;

 set Quantidade(num value) => _quantidade = value ?? 0.0;

 num get Preco => _preco;

 set Preco(num value) => _preco = value ?? 0.0;

 String get Marca => _marca;

 set Marca(String value) => _marca = value ?? "";


// construtor

Bebiba({String codigo, num quantidade, num preco, String marca}){

  Codigo = codigo;
  Quantidade = quantidade;
  Preco = preco;
  Marca = marca;

}


// methods


Clone() => Bebiba (codigo: Codigo, quantidade: Quantidade, preco: Preco, marca: Marca);



@override
  String toString() {

    return "Código: $Codigo, Quantidade: $Quantidade, Preço: $Preco, Marca: $Marca";
  }

}