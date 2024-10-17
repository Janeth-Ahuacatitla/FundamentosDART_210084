void main() {
  // Llama a la función emitNumbers que devuelve un Stream<int>.
  // Se suscribe al stream usando .listen para recibir los valores emitidos.
  emitNumbers().listen((value) {
    // Cada vez que el stream emita un valor, se imprime aquí.
    print('Stream value: $value');
  });
}

// Esta función genera un Stream de enteros que emite un valor cada segundo.
Stream<int> emitNumbers() {
  return Stream.periodic(
    const Duration(seconds: 1), // Cada valor se emite cada 1 segundo.
    (value) {
      // La función callback recibe el índice del evento actual.
      return value;
    },
  ).take(5); // Se limita el stream para emitir solo los primeros 5 valores.
}