class Produto{
  //ficha 6 1
  //atributos

  int _codigo;
  String _descricao;
  int _quantStock;
  int _quantMinStock; 
   

  //getters and setters

  get Codigo => _codigo;
  get Descricao => _descricao;
  get QuantStock => _quantStock;
  get QuantMinStock => _quantMinStock;

  set Codigo (int codigo) => _codigo = codigo ?? null;
  set Descricao (String descricao) => _descricao = descricao ?? "vazio";
  set QuantStock (int quantStock) => _quantStock = quantStock ?? 0.0;
  set QuantMinStock (int quantMinStock) => _quantMinStock = quantMinStock ?? 0.0;

  // construtor

  Produto({int codigo, String descricao, int quantStock, int quantMinStock}){
    Codigo = codigo;
    Descricao = descricao;
    QuantStock = quantStock;
    QuantMinStock = quantMinStock;
    print(controleStock());
      

  }

  // métodos

  
  String controleStock(){
    String alerta = " ";
    if (QuantStock < QuantMinStock ){
      alerta = "Produto de código $Codigo, ($Descricao) está com Stock baixo. Por favor regularize a situação. O estoque deve ser maior que $QuantMinStock";
      return alerta;
    }
    return "Produto de código $Codigo, ($Descricao) está com Stock bom.";

  }
  @override
  String toString() {
    
    return "Descrição: $Descricao, Quantidade em Stock: $QuantStock, Quantidade mínima Stock: $QuantMinStock";
  }


}