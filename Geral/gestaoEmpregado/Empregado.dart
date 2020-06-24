
abstract class Empregado {

  //atributos

  String _nome;
  int _codigo;
  int _diasTrab;
  double _vencimento;

  // getters and setters

  get Nome => _nome;
  get Codigo => _codigo;
  get DiasTrab => _diasTrab;
  get Vencimento => _vencimento;

  set Nome(String nome) => _nome = nome;
  set Codigo(int codigo) => _codigo = codigo;
  set DiasTrab(int diasTrab) => _diasTrab = diasTrab;
  set Vencimento (double vencimento) => _vencimento = vencimento;

 // construtor

  Empregado(String nome, int codigo, int diasTrab, double vencimento){
    Nome = nome;
    Codigo = codigo;
    DiasTrab = diasTrab;
    Vencimento = vencimento;
  }

//métodos

double Calculo_Vencimento({double adicional, double valorKm, double valor_Vendas});


@override
String toString() =>  "Codigo: $Codigo, nome: $Nome, Dias trabalhado: $DiasTrab, ";

}