void main() {
  // Inicio del programa
  print('Inicio del programa');
  
  // Llamada a la función httpGet, que devuelve un Future (tarea asíncrona).
  // Se usa el método .then para procesar la respuesta si la petición tiene éxito.
  httpGet('https://fernando-herrera.com/cursos')
    .then((value) {
      // Aquí se imprime el valor recibido si la petición es exitosa.
      print(value);
    })
    .catchError((err) {
      // Si ocurre algún error, se captura e imprime en esta sección.
      print('Error: $err');
    });

  // Fin inmediato del programa, sin esperar a que se complete el Future.
  print('Fin del programa');
}

// Esta función simula una petición HTTP que devuelve un Future<String>.
// El Future se resuelve después de un retraso de 1 segundo.
Future<String> httpGet(String url) {
  return Future.delayed(
    const Duration(seconds: 1), 
    () {
      // Se lanza una excepción para simular un error en la petición.
      throw 'Error en la petición http';

      // Si no hubiera error, esta línea devolvería la respuesta como String.
      // return 'Respuesta de la petición http';
    }
  );
}


