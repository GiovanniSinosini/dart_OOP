import 'Eletrodomestico.dart';


class Play5 extends Eletrodomestico{


// atributtes

double _speed;
String _cor;
String _holder;


// get and set

 double get Speed => _speed;

 set Speed(double value) => _speed = value ?? 0.0;

 String get Cor => _cor;

 set Cor(String value) => _cor = value ?? "Branco";

 String get Holder => _holder;

 set Holder(String value) => _holder = value ?? "";


// Construtor

Play5({double precoBase, String cor, String consumo, double peso, double speed, String color, String holder}) : super (precoBase: precoBase,
cor: cor, consumo: consumo, peso: peso){

Speed = speed;
Cor = color;
Holder = holder;



} 


// methods



@override
  String toString() {
 
     return "Speed: $Speed, Color: $Cor, Holder: $Holder, " + super.toString();
  }




}
