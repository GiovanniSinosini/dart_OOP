import 'Mail.dart';


class MailMap{

  Map<String, List<Mail>> boxEntrada;
 

// construtor

  MailMap(){
    boxEntrada = Map();
  }

// métodos

int TotalEndereco(){    // total de endereços de emails enviados
   Set<Mail> total = new Set();
    
   boxEntrada.forEach((key, value){
   value.forEach((mail) => total.add(mail));
         
  });
  
  return total.length;
}

void GuardarEmailRecebido(Mail mailRecebido){
  if(boxEntrada.containsKey(mailRecebido.EnderecoOrigem)){
    boxEntrada[mailRecebido.EnderecoOrigem].add(mailRecebido);
  } else{
    boxEntrada[mailRecebido.EnderecoOrigem] = List(); 
    boxEntrada[mailRecebido.EnderecoOrigem].add(mailRecebido);
  }
  
}

int ContarEmails(String endereco){

  var teste = boxEntrada[endereco].toList();
  return teste.length;



/*if (boxEntrada.containsKey(endereco)){
    return boxEntrada[endereco].length.toString();
  } else{
    return "Não existe emails registrados com origem de $endereco";
  }*/

}

void Inserir_lista_Mails(List<Mail> mails){

  for (var item in mails) {
    GuardarEmailRecebido(item);
       
  }
}

List<String> Pesquisa_por_Assunto(String palavra){
  List<String> result_Pesquisa = new List<String>();

  for (var list in boxEntrada.values) {  // access the list
    for (var item in list) {                  // access list items
      if (item.Assunto.contains(palavra)){
        result_Pesquisa.add(item.EnderecoOrigem);
      }
    }
    
return result_Pesquisa;

/*  boxEntrada.forEach((key, value){
      for (var i = 0; i < value.length; i++) {
        if (value[i].Assunto.contains(palavra)){
          result_Pesquisa.add(key);
        }
      }
  });
  */
 
}
}
Map<String, List<Mail>> Pesquisa_por_AssuntoMail(String palavra){
  Map<String, List<Mail>> result_Pesquisa = new Map();

  boxEntrada.forEach((key, value){
      for (var i = 0; i < value.length; i++) {
        if (value[i].Assunto.contains(palavra)){
          if (result_Pesquisa.containsKey(key)){
           result_Pesquisa[key].add(value[i]);
          }else{
            result_Pesquisa[key] = List();
            result_Pesquisa[key].add(value[i]);
          }
        }
      }
  });
  return result_Pesquisa;
}

void EliminarEmail(DateTime date){
 Set<Mail> list_Delete = new Set();
 
  boxEntrada.forEach((key, value){
   value.forEach((mail) {
     if(mail.DataRececao.compareTo(date) < 0){
       list_Delete.add(mail);
     }
   });
   list_Delete.forEach((mail) => value.remove(mail));
  });
}

Set<String> ListaEmailHoje (){
 Set<String> list_Hoje = new Set();
 var now = DateTime.now();
 DateTime hoje = DateTime(now.year, now.month, now.day);

  boxEntrada.forEach((key, value){
   value.forEach((mail) {
     if(mail.DataRececao.compareTo(hoje) == 0){
       list_Hoje.add(mail.EnderecoOrigem);
     }
   });
  });
  return list_Hoje;
}

void Spam(List<String> palavras){
  boxEntrada.forEach((key, value) {
    palavras.forEach((palavra){
      value.removeWhere((mail) => mail.Assunto.toString().contains(palavra));
    });
  });
}

Set<String> Orig_Portugal(){
    Set<String> listPOrtugal = Set<String>();
    boxEntrada.forEach((key, value){
      value.forEach((mail){
        
        //String subString = mail.EnderecoOrigem.toString().split("@")[1].split(".")[1].toLowerCase();
        //if (subString == "pt" && !listPOrtugal.contains(mail.EnderecoOrigem)) {
        if (mail.EnderecoOrigem.toString().endsWith("pt")){
          listPOrtugal.add(mail.EnderecoOrigem);
          
        }
      });
    });
    return listPOrtugal;
  }


void ImprimirEmails(){
  String saida = "";
  for (var enderecoOrigem in boxEntrada.keys) {
    print("Endereço de origem: $enderecoOrigem\n${boxEntrada[enderecoOrigem]}\n");
    
  }
}

}

void main(){

var now = DateTime.now();
DateTime hoje = DateTime(now.year, now.month, now.day);

MailMap box1 = new MailMap();

Mail m1 = new Mail (enderecoOrige: "gio@gmail.com", dataRececao:  DateTime.utc(2019,06,06), assunto: "Avaliação", texto:"Haverá teste no dia 05/06/2020?");
Mail m2 = new Mail (enderecoOrige: "pri@gmail.pt", dataRececao: DateTime.utc(2020,02,12), assunto: "Pagamento", texto:"Pagamento solicitado");
Mail m3 = new Mail (enderecoOrige: "lia@gmail.com", dataRececao: DateTime.utc(2020,03,14), assunto: "Pensão", texto:"Pensão concedida");
Mail m4 = new Mail (enderecoOrige: "gio@gmail.com", dataRececao: DateTime.utc(2020,01,04), assunto: "Azeite", texto:"Azeitonas frescas");
Mail m5 = new Mail (enderecoOrige: "gio@gmail.com", dataRececao:  DateTime.utc(2020,03,24), assunto: "Frango", texto:"KFC melhor frango frito");
Mail m6 = new Mail (enderecoOrige: "pri@gmail.pt", dataRececao: DateTime.utc(2020,01,21), assunto: "Pagamento", texto:"Pagamento solicitado");
Mail m7 = new Mail (enderecoOrige: "lia@gmail.com", dataRececao: DateTime.utc(2020,04,01), assunto: "Amigo", texto:"Amigo bom");
Mail m8 = new Mail (enderecoOrige: "gio@gmail.com", dataRececao: DateTime.utc(2020,03,04), assunto: "Frutas", texto:"Abacaxi, morango");


Mail m9 = new Mail (enderecoOrige: "ang@gmail.pt", dataRececao: DateTime(2019,02,11), assunto: "Festa", texto:"Aniversário");
Mail m10 = new Mail (enderecoOrige: "gui@gmail.com", dataRececao: DateTime.utc(2019,01,01), assunto: "Jantar Frutas", texto:"Formatura para 300 pessoas");
Mail m11 = new Mail (enderecoOrige: "gu@gmail.com", dataRececao: DateTime.utc(2020,03,04), assunto: "Feriado", texto:"Viagens a serem marcadas");
Mail m12 = new Mail (enderecoOrige: "armando@gmail.com", dataRececao: hoje, assunto: "Acabando", texto:"Exercícios");


List<Mail> conjuntoMails = new List<Mail>();
conjuntoMails.add(m9);
conjuntoMails.add(m10);
conjuntoMails.add(m11);



box1.GuardarEmailRecebido(m1);
box1.GuardarEmailRecebido(m2);
box1.GuardarEmailRecebido(m3);
box1.GuardarEmailRecebido(m4);
box1.GuardarEmailRecebido(m5);
box1.GuardarEmailRecebido(m6);
box1.GuardarEmailRecebido(m7);
box1.GuardarEmailRecebido(m8);
box1.GuardarEmailRecebido(m9);
box1.GuardarEmailRecebido(m10);
box1.GuardarEmailRecebido(m11);
box1.GuardarEmailRecebido(m12);


print("");
print("Todos emails registrados");
box1.ImprimirEmails();

print("========================================================================");
print("");

print("Total de endereços a partir dos quais se recebeu o e-mail ${box1.TotalEndereco()}");
print("");

print("=============================================================================");
print("");

print("Existem ${box1.ContarEmails(m1.EnderecoOrigem).toString()} emails registrados de origem => ${m1.EnderecoOrigem}");
print("Existem ${box1.ContarEmails(m6.EnderecoOrigem).toString()} email registrados de origem => ${m6.EnderecoOrigem}");

print("=============================================================================");
print("");

print("Lista de emails inserida com sucesso");
box1.Inserir_lista_Mails(conjuntoMails);

print("=============================================================================");
print("");

print("Resultado de pesquisa no campo assunto: Palavra pesquisada => Pagamento:");
print(box1.Pesquisa_por_Assunto("Pagamento"));

print("");

print("Resultado de pesquisa no campo assunto: Palavra pesquisada => Frutas:");
print(box1.Pesquisa_por_Assunto("Frutas"));

print("=============================================================================");
print("");

print("Resultado de pesquisa no campo assunto - retornando EMAIL: Palavra pesquisada => Pagamento:");
print(box1.Pesquisa_por_AssuntoMail("Pagamento"));

print("");

print("Resultado de pesquisa no campo assunto - retornando EMAIL: Palavra pesquisada => Frutas:");
print(box1.Pesquisa_por_AssuntoMail("Frutas"));

print("=============================================================================");
print("");

print("Eliminar emails com data anterior a 30/01/2020");
print("Total antes => ${box1.TotalEndereco()}");
box1.EliminarEmail(DateTime(2020,01,30));
print("Total depois => ${box1.TotalEndereco()}");

print("=============================================================================");
print("");

print("Lista de endereços de email recebidos HOJE:");
print(box1.ListaEmailHoje());

print("=============================================================================");
print("");

print("Eliminar SPAM");
print(box1.TotalEndereco());
box1.Spam(["Feriado", "Exame"]);
print(box1.TotalEndereco());

print("=============================================================================");
print("");

print("Listagem com todos os endereços oriundos de Portugal:");
print(box1.Orig_Portugal());

print("");
}