void main() {
  final pokemon ={
    "Name" : "Pikachu",
    "HP" : 100,
    "isAlive": true,
    "abilities":["impact Trueno", "Cola de Hierro","Rapido"],
    "sprites":
    {
      1 : "pikachu/front.png",
      2 : "pikachu/back.png"
    }
  };
  
  final Map<String, dynamic>trainer={
    'Name':'Ash Ketchup',
    'Gender':'Male',
    'Age': '12',
    'isGymnasiumLeader': false
  };
  
   final pokemons =
   {
     1: "Pikachu",
     2: "Charmander",
     3: "Squirtle",
     4: "Pidgeot"
   };
  
  
  //Imprimir los datos de un mapa

print("""Los datos actuales del mapa son:
Pokemon = $pokemon
Trainer = $trainer
Pokemons = $pokemons
""");
  
  print("*************************************************************************");
  print("""
  Acediendo a las propiedades del pokemon usando los braquets/corchetes []
  :
  ----------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAliven']}
  Sprites = ${pokemon['sprites']}
  ----------------------------------------------
  """);
  
  print("""
   """);
  //Reto 01: obtener el valor independiente de las imagenes de front y back del pokemon
  
  // Front: ${(pokemon['sprites'])[1]}
  // Back: ${(pokemon['sprites'])[2]}
  
  //Dado que la solucion  ya esta obsoleta lo que queda es crear una nueva
  // variable con el objeto y destructurar las imagenes para acceder a ella
  

  final tmp_sprites = pokemon['sprites'] as Map<int, String>;
   
   print("""
   Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAliven']}
  Sprites = ${pokemon['sprites']}
  ------------------------------------
  Back: ${tmp_sprites[2]}
  Front: ${tmp_sprites[1]}
   
   """);
   
;  
 
  
  
}