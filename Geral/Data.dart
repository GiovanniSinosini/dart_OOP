class Data {
  // atributos de instância
  int _ano;
  int _mes;
  int _dia;

  // getters and setters
  get Ano => _ano;
  get Mes => _mes;
  get Dia => _dia;

  set Ano(int valor) => _ano = valor;
  set Mes(int valor) => _mes = valor >= 1 && valor <= 12 ? valor : 1;

  set Dia(int valor) {
    var diasPorMes = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if (valor >= 1 && valor <= diasPorMes[Mes]) {
      _dia = valor;
    } else if (Mes == 2 && valor == 29 && eBissexto(Ano)) {
      _dia = valor;
    } else {
      _dia = 1;
    }
  }

  // Construtor
  Data(int dia, int mes, int ano) {    
    Ano = ano;
    Mes = mes;
    Dia = dia;
  }

  bool eBissexto(int valor) {
    if (valor % 400 == 0 || (valor % 4 == 0 && valor % 100 != 0)) {
      return true;
    }
    return false;
  }

  @override
  String toString() => "$Dia/$Mes/$Ano";
}

void main() {
  Data d = Data(21, 11, 1975);
  print(d);
}
