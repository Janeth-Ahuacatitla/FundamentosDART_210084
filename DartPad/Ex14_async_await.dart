void main() async {
  // Inicio del programa
  print('Inicio del programa');
  
  try {
    // Llamada a la función httpGet usando await.
    // Esto hace que el programa espere el resultado del Future.
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Si no hay errores, se imprime el valor obtenido.
    print(value);
  } catch (err) {
    // Si ocurre un error, se captura y se imprime aquí.
    print('Tenemos un error: $err');
  }

  // Esta línea se ejecuta después de que se resuelva el Future anterior.
  print('Fin del programa');
}

// Esta función simula una petición HTTP usando async/await.
// Devuelve un Future<String> después de un retraso.
Future<String> httpGet(String url) async {
  // Simula una espera de 1 segundo.
  await Future.delayed(const Duration(seconds: 1));

  // Simula un error lanzando una excepción.
  throw 'Error en la petición';

  // Si no hubiera error, se devolvería este valor.
  // return 'Tenemos un valor de la petición';
}
