class Populacao{
  //atributos

  Map<String, int> tabPopulacional;


  // Construtor
  Populacao(){
    tabPopulacional = Map();

  }

 // Métodos

 void addCidade(String cidade, int populacao){
   tabPopulacional[cidade] = populacao;
 }

 String consultaCidade(String cidade){
   String cidadeFormat = cidade.toUpperCase();
   
   if (tabPopulacional[cidadeFormat] != null){
    String msg = "A cidade $cidadeFormat possui ${tabPopulacional[cidadeFormat]} habitantes.";
     return msg;
   } else{
     String msg2 = "$cidadeFormat NÃO cadastrada.";
     return msg2;
   }
 }

 String alteraPopul(String cidade, int newPopulac){
   if (tabPopulacional[cidade.toUpperCase()] != null){
     tabPopulacional[cidade.toUpperCase()] = newPopulac;
     String msg = "População da cidade ${cidade.toUpperCase()} atualizada com sucesso";
     return msg;
   } else{
     String msg2 = "Cidade NÃO encontrada";
     return msg2;
   }
 }
String maisPopu(){
int maior = 0;
String msg;
String cidade;


tabPopulacional.forEach((key, value){
  if (value > maior){
    maior = value;
    cidade = key;
  }
});
  
  msg = "$cidade é a mais populosa com $maior habitantes";
  return msg;
  }

String mdeiaPopu(){
  int soma = 0;
  double media = 0; 
  String msg;

  tabPopulacional.forEach((key, value) => soma += value);
  media = soma / tabPopulacional.length;
  
  msg = "A média populacional das cidades cadastradas é ${media.toStringAsFixed(2)}.";
  return msg;
  }


List array(){
List<int> lista = List();

tabPopulacional.forEach((key, value) => lista.add(value));

return lista; 
}

String removcidade(String cidade){
  if (tabPopulacional[cidade.toUpperCase()] != null){
    tabPopulacional.remove(cidade.toUpperCase());
    String msg = "${cidade.toUpperCase()} removido com sucesso.";
    return msg;
  } else{
    String msg2 = "Cidade NÃO cadastrada";
    return msg2;
  }
}

@override 
String toString() {
    String saida = " ---------------------------- POPULAÇÕES --------------------\n";
    for (var cidade in tabPopulacional.keys) {
      saida += "Cidade -> $cidade  |  População -> ${tabPopulacional[cidade]} mil\n";
    }
    
    return saida;
  }


}

void main(){

  Populacao pop1 = Populacao();

  pop1.addCidade("PORTO", 100000);
  pop1.addCidade("BRAGA", 80000);
  pop1.addCidade("LISBOA", 350000);
  
  print("");
  print("================================");
  print("Consulta de cidades:");
  print(pop1.consultaCidade("Porto"));
  print("================================");
  print("");

  print("Alteração populacional:");
  print(pop1.alteraPopul("Porto", 120000));
  print(pop1.tabPopulacional);

  print("");
  print("================================");
  print("");

  print(pop1.maisPopu());

  print("");
  print("================================");
  print("");

  print(pop1.mdeiaPopu());
  print("");
  print("================================");
  print("");

  print("Método que retorna um array");
  print(pop1.array());
  print("");
  print("================================");
  print("");

  print("Método que remove cidade da tabela(Map)");
  print(pop1.removcidade("Lisboa"));
  print(pop1.tabPopulacional);
  print("");
  print("================================");
  print("");
  print(pop1);

}