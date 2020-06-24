import './Data.dart';

class Automovel {
  // atributos de instancia
  String _marca;
  String _modelo;
  String _matricula;
  int _cilindrada;
  String _cor;
  Data _dataMatricula;

  // Getters and Setters
  get Marca => _marca;
  get Modelo => _modelo;
  get Matricula => _matricula;
  get Cilindrada => _cilindrada;
  get Cor => _cor;
  get DataMatricula => _dataMatricula;

  set Marca(String valor) => _marca = valor;
  set Modelo(String valor) => _modelo = valor;
  set Cor(String valor) => _cor = valor;
  set DataMatricula(Data valor) => _dataMatricula = valor;
  set Cilindrada(int valor) => _cilindrada = valor > 0 ? valor : 0;
  set Matricula(String valor) =>
      _matricula = _eMatriculaValida(valor ?? "") ? valor : "AA-00-00";

  // Construtor
  Automovel(
      {String marca,
      String modelo,
      String matricula,
      int cilidrada,
      String cor,
      Data dataMatricula}) {
    Marca = marca;
    Modelo = modelo;
    Matricula = matricula;
    Cilindrada = cilidrada == null ? 0 : cilidrada;
    Cor = cor;
    if (dataMatricula == null) {
      dataMatricula = Data(1, 1, 1900);
    }
    DataMatricula = dataMatricula;
  }

  @override
  String toString() {
    String resultado = null;
    if (Marca != null && Modelo != null && Matricula != null && Cilindrada != 0)
      resultado = "$Marca $Modelo, $Matricula";
    else
      resultado = "não definido";

    return resultado;
  }

/*
	 * Crie um m�todo ComparaAutomovel() que receba um objecto Automovel como
	 * argumento e retorne um valor booleano indicando se a Marca, modelo e
	 * matr�cula s�o iguais. No caso de uma ou mais destas v ari�veis serem
	 * diferentes, o m�todo retornar� false.
	 */
  bool comparaAutomovel(Automovel a) =>
      Marca == a.Marca && Modelo == a.Modelo && Matricula == a.Matricula
          ? true
          : false;
/*
	 * s. Crie um m�todo ComparaData() que receba um objecto Data como argumento
	 * e retorne um valor booleano indicando se a Data do autom�vel � anterior
	 * (true) ou posterior (false) � Data passada como argumento.
	 */
  bool comparaData(Data dt) => DataMatricula.Ano <= dt.Ano &&
          DataMatricula.Mes <= dt.Mes &&
          DataMatricula.Dia <= dt.Dia
      ? true
      : false;

  bool _eMatriculaValida(String valor) {
    var aux = valor.split("-");
    int digitos = 0, letras = 0;

    if (valor.length == 8 && aux.length == 3) {
      for (var i = 0; i < aux.length; i++) {
        if (_soDigitos(aux[i])) digitos++;
        if (_soLetras(aux[i])) letras++;
      }
    }

    return digitos == 2 && letras == 1 ? true : false;
  }

  bool _soLetras(String c) {
    for (var i = 0; i < c.length; i++) {
      // ver tabela em https://en.wikipedia.org/wiki/List_of_Unicode_characters
      var char = c.codeUnitAt(
          i); // retorna o codigo decimal do carater que está no indice i
      if (!((char >= 65 && char <= 90) || (char >= 97 && char <= 122))) {
        return false;
      }
    }
    return true;
  }

  bool _soDigitos(String c) {
    for (var i = 0; i < c.length; i++) {
      // ver tabela em https://en.wikipedia.org/wiki/List_of_Unicode_characters
      var char = c.codeUnitAt(
          i); // retorna o codigo decimal do carater que está no indice i
      if (!(char >= 48 && char <= 57)) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  // a titulo de exemplo
  Automovel a = Automovel(
      marca: "BMW",
      modelo: "X1",
      matricula: "26-IZ-22",
      cilidrada: 2300,
      cor: "Branco",
      dataMatricula: Data(1, 3, 2010));
  print(a);
  Automovel b = Automovel(
      marca: "Fiat",
      modelo: "500L",
      matricula: "63-OV-63",
      cilidrada: 1300,
      cor: "Preto",
      dataMatricula: Data(1, 3, 2014));
  print(a.comparaAutomovel(b));
  print(a.comparaData(b.DataMatricula));
}
