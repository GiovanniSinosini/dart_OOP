
class Animal {
  //atributos
  String nome;
  double peso;
  static int totalAnimais = 0;

  //contrutores
  Animal (this.nome, this.peso){
  totalAnimais ++;
  }


  //metodos
  void comer() => print("$nome comeu!!");
  void fazerSom() => print("$nome fez um som");
  static void rei() => print("DRAGAO");

  
  @override
  String toString() {
    
    return "@ $nome tem $peso kg!!!";
  }
}


class Cao extends Animal{
  int felicidade;


  Cao(String nome, double peso, int felicidade) : super(nome, peso){
    this.felicidade = felicidade;
  }

  @override
  void fazerSom() {
    print ("$nome, LADROU!!!");
  }

  void brincar(){
    felicidade += 10;
    print("A felicidade do $nome aumentou para $felicidade");
  }

  bool estaAmigavel() => felicidade >= 10 ? true: false;


@override 
String toString() {
   
    return super.toString() + ", ${felicidade >= 10 ? "está feliz!!!" : "Não está bem disposto!" }";
  }

}



class Gato extends Animal{

  Gato(String nome, double peso) : super(nome, peso);


  bool estaAmigavel() => true;

  @override 
  void fazerSom() {
    print("$nome, fez MIAU!!!");
  }

 @override 
 String toString() {
    
    return super.toString() + ", ${estaAmigavel() ? "está feliz!!!" : "Não está bem disposto!" }";
  }


} 




main(){

Animal a1 = Animal("Animalesco", 500);
print(a1);
a1.fazerSom();
a1.comer();

// cria cao

Cao c1 = new Cao("Apple", 14, 20);
print(c1);
c1.brincar();
c1.brincar();
c1.estaAmigavel();
c1.comer();
print(c1);


Gato g1 = new Gato("Garfield", 20);
print(g1);
print("Total de animais criados -> " + Animal.totalAnimais.toString());
Animal.rei();

}