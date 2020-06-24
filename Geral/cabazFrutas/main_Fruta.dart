import 'abstract_Fruta.dart';

void main(){

CabazDeFruta cabaz1 = new CabazDeFruta();

FrutaUnidade frutaUnidade1 = new FrutaUnidade("Banana", 2.53, 15);
FrutaVolume frutaVolume1 = new FrutaVolume("Limão", 2.44, 10);
FrutaPeso frutaPeso1 = new FrutaPeso("Jaca", 1.4, 3.8);
FrutaUnidade frutaUnidade2 = new FrutaUnidade("Melancia", 4.21, 10);
FrutaVolume frutaVolume2 = new FrutaVolume("Lima", 1.42, 7);
FrutaPeso frutaPeso2 = new FrutaPeso("Melão", 3.4, 6.8);

cabaz1.Add_Lista_Compra(frutaUnidade1);
cabaz1.Add_Lista_Compra(frutaVolume1);
cabaz1.Add_Lista_Compra(frutaPeso1);
cabaz1.Add_Lista_Compra(frutaUnidade2);
cabaz1.Add_Lista_Compra(frutaVolume2);
cabaz1.Add_Lista_Compra(frutaPeso2);


print("");
print("===============================");
print("Frutas compradas:");
cabaz1.Lista_Comprados();
print("");
print("===============================");
print("Valor total da compra: ${cabaz1.Valor_ToTal_Compra()} EUR");
print("");


}