void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  plant.consumeEnergy(10); // Consume la energía antes de devolver el resultado
  return plant.energyLeft; // Devuelve la energía restante después de cargar
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant extends EnergyPlant { // Cambié a herencia
  NuclearPlant({required double energyLeft})
      : super(energyLeft: energyLeft, type: PlantType.nuclear);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5); // Asegúrate de usar -= aquí
  }
}
