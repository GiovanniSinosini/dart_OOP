class Produto3{


//atributos

String _codigo;
String _nome;
num _preco;
int _quantidade;
 
// getters and setters 
 
 String get Codigo => _codigo;

 set Codigo(String value) => _codigo = value ?? "";

 String get Nome => _nome;

 set Nome(String value) => _nome = value ?? "";

 num get Preco => _preco;

 set Preco(num value) => _preco = value ?? "";

 int get Quantidade => _quantidade;

 set Quantidade(int value) => _quantidade = value ?? "";


// constructor

Produto3({String codigo, String name, num preco, int quantidade}){

  Codigo = codigo;
  Nome = name;
  Preco = preco;
  Quantidade = quantidade;


}


// methods


Produto3 clone() => new Produto3(codigo: Codigo, name: Nome, preco: Preco, quantidade: Quantidade);




@override
  String toString() {
    
    return "Código: $Codigo, Nome: $Nome, Preço: $Preco, Quantidade: $Quantidade";
  }



}