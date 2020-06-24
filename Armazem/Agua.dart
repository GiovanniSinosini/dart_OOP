import 'Bebiba.dart';

class Agua extends Bebiba{

  //atributos

  String _origem;



  // getters and setters
 
 String get Origem => _origem;

 set Origem(String value) => _origem = value ?? "";




  // Constructor

Agua ({String codigo, num quantidade, num preco, String marca, String origem}) : super (codigo: codigo, quantidade: quantidade, preco: preco, marca: marca){

  Origem = origem;

}




  // methods


Clone() => Agua (codigo: Codigo, quantidade: Quantidade, preco: Preco, marca: Marca, origem: Origem);


@override
  String toString() {
    
    return super.toString() + ", Origem: $Origem";
  }








}