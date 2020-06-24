
class Ponto2d{
  //atributos
  String _name;
  double _x;
  double _y;

  //getters and setters

  get X => _x;
  get Y => _y;
  get Name => _name;

  set X (double x ) => _x = x ?? 0.0;
  set Y (double y) => _y = y ?? 0.0;  
  set Name (String name) => _name = name ?? "";


  //construtores

Ponto2d({String name, double x, double y}){
  Name = name;
  X = x;
  Y = y;
}

Ponto2d_copia(Ponto2d copia){
  Name = copia._name;
  X = copia._x;
  Y = copia._y;
}

  //metodos

Clone() => new Ponto2d(name: Name, x: X, y: Y );

@override
String toString(){
  return "$Name => x = $X,  y = $Y"; 
} 


void incCoord(double iX, double iY){
  X = X + iX;
  Y = Y + iY;
}  

void decCoord(double iX, double iY){
  X = X - iX;
  Y = Y - iY;
} 

void somaPonto(Ponto2d pontoParametro){
  X = X + pontoParametro._x;
  Y = Y + pontoParametro._y;

}

Ponto2d somaPonto2(String name, double dx, double dy){
double novoX = X + dx;
double novoY = Y + dy;

return new Ponto2d(name: name, x: novoX, y: novoY);

}

void simetrico(Ponto2d testeSime){
  if (testeSime.X == testeSime.Y){
    print("Ponto é simetrico");
  }else {
    print("Ponto NÃO simétrico");
  }
  
  
}


void coordPos(Ponto2d testePosit){
  if (testePosit.X > 0 && testePosit.Y > 0){
   print("Coordenadas são positivas");
  } 
  else if (testePosit.X > 0 && testePosit.Y < 0){
    print("Coordenadas são negativas");
  }
  else if (testePosit.X > 0 && testePosit.Y < 0){
    print("Somente o eixo X é positovo");
  } else{
    print("Somente o eixo Y é positivo"); 
  }
}

void igual(Ponto2d testIgual){

  if (X == testIgual.X && Y == testIgual.Y){
   print("Os pontos são iguais");
  } else{
    print("Pontos são DIFERENTES");
  }
  

}

} 










