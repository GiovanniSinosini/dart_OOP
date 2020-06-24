import 'Bebiba.dart';

class Refrigerante extends Bebiba{

  //atributos

  num _acucar;

  bool _promocao;  


  // getters and setters

   num get Acucar => _acucar;

   set Acucar(num value) => _acucar = value ?? 50;

  get Promocao => _promocao;

  set Promocao(bool value) => _promocao = value ?? false;


  // constructor

  Refrigerante ({String codigo, num quantidade, num preco, String marca, num acucar, bool promocao}) : super(codigo: codigo, quantidade: quantidade, preco: preco, marca: marca){

    Acucar = acucar;
    Promocao = promocao;
    if (Promocao == true){
      super.Preco -= super.Preco * 0.10; 
    }
  }

  //methods


  Clone() => Refrigerante (codigo: Codigo, quantidade: Quantidade, preco: Preco, marca: Marca, acucar: Acucar, promocao: Promocao);


@override
  String toString() {
    
    return super.toString() + ", Percentagem Açucar: $Acucar %, Promoção $Promocao";
  }


}