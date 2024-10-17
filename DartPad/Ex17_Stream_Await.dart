void main() {
  // Llama a emitNumber() que devuelve un Stream<int>.
  // Se suscribe al stream usando .listen() para recibir los valores emitidos.
  emitNumber().listen((int value) {
    // Cada vez que el stream emite un valor, se imprime aquí.
    print('Stream value: $value');
  });
}

// Esta función genera un Stream<int> usando async*.
// Emite los números de la lista uno por uno con un retraso de 1 segundo.
Stream<int> emitNumber() async* {
  // Lista con los valores a emitir.
  final valuesToEmit = [1, 2, 3, 4, 5];

  // Recorre cada número de la lista.
  for (int i in valuesToEmit) {
    // Espera 1 segundo antes de emitir cada valor.
    await Future.delayed(const Duration(seconds: 1));
    // Emite el valor actual del ciclo usando yield.
    yield i;
  }
}