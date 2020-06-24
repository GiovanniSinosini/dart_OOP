import 'IAutenticavel.dart';
import 'Rodavel.dart';

class Gestor implements IAutenticavel, Rodavel{


bool autentica(int senha) => false;
bool eSegura(int senha) => true;
String rodar(double g) {
  return "Rodou => $g graus";
}





}