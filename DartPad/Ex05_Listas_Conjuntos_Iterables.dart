void main() {
  //Listas (LIST)

  //La declaración de una LIST esta limitada por corchetes(BRACKETS), y cada elemento de ser indivudual y puede repetirse
  final numeros = [1, 2, 2, 2, 3, 4, 5, 6, 7, 7, 7, 7, 8, 8, 9, 10];

  print("Ejemplo de LIST; $numeros");
  print("Confirmamos el tipo de dato para NUMEROS que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta información de una lista tal como:");
  print("El tamanño: ${numeros.length}");
  print("""
  Para acceder a los elementos debemos especificar la posición entre []
  El primer elemento en la primera pocisión es: ${numeros[0]}
  El elemento en la segunda posición es: ${numeros[1]}, siempre respetando el posición-1
  El último elemento de la lista sería: ${numeros[numeros.length-1]}
  ------------------------------------------------------------------------------
  De igual manera existen las siguientes altenativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  ------------------------------------------------------------------------------
  También tendremos acceso a algunos métodos que permiten la transformación o filtrado del contenido
  Por ejemplo usar reversed, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la función reversed ha transformado la LIST original y la retorna como un ITERABLE
  """);
  
    //Iterables (ITERABLES)
  
  final numerosAlreves = numeros.reversed;
  print("Los iterables son estructuras de datos que DART y otros lenguajes para optimizar en terminos de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un ITERABLE: $numerosAlreves");
   print("Confirmamos el tipo de dato para NUMEROS AL REVÉS que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transoformar una lista ITERABLE en viceversa");
  print(
    "Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType}"
  );

  
  //Conjunto de Datos (SET)
  //Un SET es una estructura de datos utilizada por DART , que simplifica los elementos eliminando los duplicados
  print("""Veamos que pasa con los Conjuntos (SET)
  Convertimos el ITERABLE en un SET usando .toSet ${numeros.toSet()}
  Podemos visualizar el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {}.
  """);

  //De igual manera podemos realizar operaciones para el filtro de elemetos usando .where()
  final  numerosMayoresA5 = numeros.where((int num){
    return num>5;
    });
  print("""Hemos filtrado sobre la LIST solo los elementos mayores a 5:
  Resultado de Filtro: ${numerosMayoresA5}""");
  print("Eliminamos duplicados ...${numerosMayoresA5.toSet()}");
}
