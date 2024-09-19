void main() {
 
  //Declarando una variable generica para almacenar mi nombre
  var myName = 'Janet';
  String myLastName = "Ahuacatitla";
  final int myDNI = 210084;
  late final int myAge;
  
  //Corregir mi nombre
  myName = "Janeth";
  //Esto ocasiona un error porque la variable está definida como final y no puede actualizar su valor
  //myDNI=220084;
  
  
 print('Hola $myName $myLastName, tu matricula es $myDNI y tu edad aún no la conozco porque no sé cuando naciste.');
  
  
  //Interponlando el valor de las variables con metodos
    
 print('Hola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es $myDNI y tu edad aún no la conozco porque no sé cuando naciste.');
}