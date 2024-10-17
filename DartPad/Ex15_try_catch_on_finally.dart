void main() async {
  // Inicio del programa
  print('Inicio del programa');
  
  try {
    // Se llama a httpGet usando await, esperando la respuesta.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Si la petición es exitosa, se imprime el valor recibido.
    print('éxito: $value');
    
  } on Exception catch (err) {
    // Este bloque captura específicamente excepciones de tipo Exception.
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Este bloque captura cualquier otro tipo de error inesperado.
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Este bloque siempre se ejecuta, ya sea que ocurra o no un error.
    print('Fin del try y catch');
  }

  // Esta línea se ejecuta después de todo el bloque try-catch-finally.
  print('Fin del programa');
}

// Función que simula una petición HTTP y devuelve un Future<String>.
Future<String> httpGet(String url) async {
  // Simula un retraso de 1 segundo.
  await Future.delayed(const Duration(seconds: 1));

  // Lanza una Exception simulando un error específico.
  throw Exception('No hay parámetros en el URL');

  // Si no hubiera error, se podría devolver este valor.
  // return 'Tenemos un valor de la petición';

  // También se podría lanzar otro tipo de error:
  // throw 'Error en la petición';
}
