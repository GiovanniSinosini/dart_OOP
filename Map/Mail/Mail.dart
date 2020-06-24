import 'MailMap.dart';

class Mail{
  
  //atributos
  String _enderecoOrigem;
  DateTime _dataRececao;
  String _assunto;
  String _texto;
  
  // getters and setters

get EnderecoOrigem => _enderecoOrigem;
get DataRececao => _dataRececao;
get Assunto => _assunto;
get Texto => _texto;

set EnderecoOrigem (String enderecoOrigem) => _enderecoOrigem = enderecoOrigem;
set DataRececao (DateTime date) => _dataRececao = date ?? " ";
set Assunto (String assunto) => _assunto = assunto ?? "";
set Texto(String texto) => _texto = texto ?? "";

// construtor

Mail ({String enderecoOrige, DateTime dataRececao, String assunto, String texto}){
  EnderecoOrigem = enderecoOrige;
  DataRececao = dataRececao;
  Assunto = assunto;
  Texto = texto; 
  


}


   // métodos
//DateFormat formatter = new DateFormat('yyyy-MM-dd');

@override
  String toString() {
    
    return "Data Receção: ${DataRececao}\nAssunto: $Assunto\nTexto: $Texto\n\n";
  }





}