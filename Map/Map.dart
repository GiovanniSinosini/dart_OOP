import '../Geral/heranca.dart';

class InfoPessoa{

  int idade;

  InfoPessoa(this.idade);

}

void main() {

  Map<String, InfoPessoa> pessoas = Map();
  
  pessoas["Pedro"] = InfoPessoa(34);

  InfoPessoa luis = InfoPessoa(31);
  pessoas["Luis"] = luis;

  print(pessoas.keys);
  print(pessoas);
  print(pessoas["Luis"].idade);
  pessoas.remove("Pedro");


  Map<int, String> distrito = Map();
  distrito[11] = "Porto";
  distrito[19] = "Lisboa";

  Map<String, dynamic> pessoa = Map();   //dynamic = generic
  pessoa["Nome"] = "Luis";
  pessoa["Idade"] = 31;
  pessoa["Sim"] = 100;




}