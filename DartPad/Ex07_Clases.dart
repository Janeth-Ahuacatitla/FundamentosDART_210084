void main()
{
  // Repaso de clases 

  //Instanciamos la Clase Hero 
  print("Hero 1:--------------------------------------------------------------");
  final wolverine=Hero("Logan","Regeneracion");
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final scarletWitch=Hero("Magia del Caos","Wanda");
  print("Hero 1:--------------------------------------------------------------");
  print(scarletWitch);
  print(scarletWitch.name);
  print(scarletWitch.power);

  final xmen=Team(type:"Heroes",name:"X-Men");
  print(xmen);
  print(xmen.name);
  print(xmen.type);

  final justiceLigue = Team(name:"La liga de la justicia");
  print(justiceLigue);
  print(justiceLigue.name);
  print(justiceLigue.type);

  //Intentamos instanciar la clase con solo el valor del tipo que no lo permite por que la 
  //final hydra = Team(type: "Villanos"); 
  
}
//Valores Posicionales


class Hero
{
  String name;
  String power;
// inicializacion del constructor 
  Hero(String pName, String pPower):
    name=pName,
    power=pPower;
}

// Clase con propiedades no posicionales y nombradas
class Team
{
  String name;
  String type;

  //El constructor de la clase siempre debe llevar el mismo nombre
  Team({required this.name, this.type="No definido."});
}