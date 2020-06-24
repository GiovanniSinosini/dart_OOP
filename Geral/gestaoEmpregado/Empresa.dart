import 'Empregado.dart';

class Empresa{
  double _adicional; 
  double _valorKm;
  double _valor_Vendas;
  double _comissao;

  List<Empregado> _listEmpregado = new List();

  get Adicional => _adicional;
  get ValorKm => _valorKm;
  get Valor_Vendas => _valor_Vendas;
  get Comissao => _comissao;

  set Adicional(double adicional) => _adicional = adicional;
  set ValorKm(double valorKm) => _valorKm = valorKm;
  set Valor_Vendas(double valor_Vendas) => _valor_Vendas = valor_Vendas;
  set Comissao (double comissao) => _comissao = comissao;
  get ListEmpregado => _listEmpregado;

  //construtor

  Empresa (double adicional, double valorKm, double valor_Vendas){
    Adicional = adicional;
    ValorKm = valorKm;
    Valor_Vendas = valor_Vendas;

  }
  
  
  // Métodos
  void Add_Empregado(Empregado empregado){ 
    _listEmpregado.add(empregado);
  } 

  void Verificar_Empregado(int codigo){
    int count = 0;
   
    for(int i = 0 ; i < _listEmpregado.length; i++){
      if (_listEmpregado[i].Codigo == codigo){ 
      count ++;
      print ("Empregado ${_listEmpregado[i].Nome} é colaborador ativo");
      } 
    }
    if (count == 0){
      print("Colaborador de codigo $codigo inexistente");
    }
  }
  

  void Obter_Ficha(int codigo){
     int count = 0;
    for(int i = 0 ; i < _listEmpregado.length; i++){
      if(_listEmpregado[i].Codigo == codigo){ 
      count++;
      print (_listEmpregado[i]);
    } 
  }
  if (count == 0){
    print("Colaborar inexistente");
  }
  }

  void Add_List(List<Empregado> lista){
    for (var i = 0; i < lista.length; i++) {
      _listEmpregado.add(lista[i]);
    }
    print("Lista inserida com sucesso.");
  } 
    

  void Imprimir_Lista_Empregados(){
    for (var item in _listEmpregado) {
      print(item);
    }
  }

  void FolhaPagamento(){
    double total = 0;
    
    _listEmpregado.forEach((f) => total += (double.parse(f.Calculo_Vencimento(adicional: Adicional, valorKm: ValorKm, valor_Vendas: Valor_Vendas).toStringAsFixed(2)))); 
    
    print("Total folha de pagamento é: " + total.toStringAsFixed(2) + "EUR");
      
  }

  void Busca_Gestores(){
    int count = 0;
    
    for (var i = 0; i < _listEmpregado.length; i++) {
      if (_listEmpregado[i].runtimeType.toString() == 'Gestor'){
      count ++;
      }
    }
      print("O número atual de Getores é: $count");
  }

  void Total_Categoria(){
    int count_Gestor = 0;
    int count_Motorista = 0;
    int count_Comercial = 0;
    int count_Normal = 0;

    
    for (var item in _listEmpregado) {
      if (item.runtimeType.toString() == 'Gestor'){
        count_Gestor ++;
      }
      else if (item.runtimeType.toString() == 'Motorista'){
        count_Motorista++;
      }
      else if (item.runtimeType.toString() == 'Comercial'){
        count_Comercial++;
      }
      else if (item.runtimeType.toString() == 'Normal'){
        count_Normal++;
      }
    }
      print ("Número de colaboradores atual por categoria é:\nGetores: ${count_Gestor}\nMortorista: $count_Motorista\nComercial: $count_Comercial\nNormal: $count_Normal");
  }
}
