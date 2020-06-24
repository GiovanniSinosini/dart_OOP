import 'heranca_Eletro.dart';

void main(){
print("");
print("=========================================================");
print("");
print("TVs:");
TV tv1 = new TV("LG", 3000, "desligado", 001, 25, 70);
TV tv2 = new TV("Samsung", 2000, "ligado", 051, 14, 70);
print(tv1);
print(tv2);
print("");
print("=========================================================");
print("");

print("MicroOndas:");
MicroOndas mic1 = new MicroOndas("LG", 5000, "desligado", 0);
MicroOndas mic2 = new MicroOndas("Hot", 6000, "desligado", 0);
print(mic1);
print(mic2);
print("");
print("=========================================================");
print("");

print("Torradeiras:");
Torradeira tor1 = new Torradeira("Sony", 1500, "desligado", 0);
Torradeira tor2 = new Torradeira("Bosh", 3000, "desligado", 0);
print(tor1);
print(tor2);
print("");
print("=========================================================");
print("");

print("MicroOndas LIGADO:");
MicroOndas mic3 = new MicroOndas("LG", 5000, "ligado", 1);
MicroOndas mic4 = new MicroOndas("Hot", 6000, "ligado", 1);
MicroOndas mic5 = new MicroOndas("Sui", 4500, "ligado", 3.4);

print(mic3);
print(mic4);
print(mic5);

print ("O consumo foi de ${mic3.Consumo(mic3.Potencia, mic3.Tempo)} KWh");
print ("O consumo foi de ${mic4.Consumo(mic4.Potencia, mic4.Tempo)} KWh");
print ("O consumo foi de ${mic5.Consumo(mic5.Potencia, mic5.Tempo)} KWh");


print("");
print("=========================================================");
print("");



}