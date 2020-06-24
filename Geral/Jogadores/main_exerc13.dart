import 'equipa.dart';
import 'jogador.dart';

void main(){


Jogador j1 = new Jogador(nome: "Giovanni", numCamisola: 10, dataNasc: DateTime.utc(1988,01,04));
Jogador j2 = new Jogador(nome: "Cristiano", numCamisola: 7, dataNasc: DateTime.utc(1987,02,20));
Jogador j3 = new Jogador(nome: "Ronaldo", numCamisola: 9, dataNasc: DateTime.utc(1990,05,08));
Jogador j4 = new Jogador(nome: "Pele", numCamisola: 6, dataNasc: DateTime.utc(1986,03,02));
Jogador j5 = new Jogador(nome: "Dunga", numCamisola: 5, dataNasc: DateTime.utc(1989,04,10));
j1.marcouGolos(15);
j2.marcouGolos(13);
j3.marcouGolos(9);
j4.marcouGolos(11);
j5.marcouGolos(7);


Equipa ep1 = new Equipa(pais: "Portugal", treinador: "Marcelo");
ep1.jogadores.add(j1);
ep1.jogadores.add(j2);
ep1.jogadores.add(j3);
ep1.jogadores.add(j4);
ep1.jogadores.add(j5);

// toStirng de Equipa 
print("==============================================================");
print(ep1.toString());

// Imprimir jogadores da equipa

print("");
print("Lista de jogadores: ");
ep1.imprimirListaJogadores(ep1.jogadores);
print("");

// Media Idades
print ("A média de idade dos jogadores é = ${ep1.mediaIdades(ep1.jogadores)}");

// Verifica se todos os jogadores tem camisola com números diferentes
print("");
print("Todos possuem camisolas com números diferentes = ${ep1.verifica(ep1.jogadores)}");
print("");

print("Comparação de golos marcados: ");
print ("O jogador ${j1.Nome} marcou mais golos que o jogador ${j2.Nome} = ${j1.comparaJogador(j2)}");
print ("O jogador ${j3.Nome} marcou mais golos que o jogador ${j1.Nome} = ${j3.comparaJogador(j1)}");
print ("O jogador ${j5.Nome} marcou mais golos que o jogador ${j2.Nome} = ${j5.comparaJogador(j2)}");


print("==============================================================");

}