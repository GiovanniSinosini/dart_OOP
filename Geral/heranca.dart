class Pessoa{

//atributos

String nome;
String endereco;


// construtores
Pessoa (this.nome, this.endereco);



//metodo
void comer() => print("estou a comer!");
void dormir() => print("estou a dormir!");


}

class Estudante extends Pessoa{
 // atributos

 int anoEscolar;

//construtores
Estudante(String nome, String endereco, int ano) : super(nome, endereco){
 anoEscolar = ano;    


}

//metodos
void matricular() => print("Está matriculado.");
void estuda() => print ("Que remédio");


}


class Trabalhador extends Pessoa{
// atributos
int categorias;
String funcao;


// construtores
Trabalhador(String nome, String endereco, int categorias, String funcao) : super(nome, endereco){
  this.categorias = categorias;
  this.funcao = funcao;

}


//metodos

void Trabalhar() => print("Haja Saude");
void picarCartao() => print("Cartao passado");

}


main() {

Pessoa p1 = new Pessoa("Luis", "Rua A1" );
p1.comer();
p1.dormir();


Estudante e1 = new Estudante("Tiago", "Rua A2", 1);
e1.dormir();
e1.matricular();

Trabalhador t1 = Trabalhador("Bruno", "Rua A3", 1, "Developer");
t1.comer();
t1.picarCartao();




}


