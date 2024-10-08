
--------------------------------------------------------------------------------------
void main() {
  // Constructores nombrados

  // Caso de prueba 1: Un nuevo paciente que se registra hoy
  final juanPerez = Person(
    ID: 250,
    name: "Janeth",
    firstLastname: "Ahuacatitla",
    secondLastname: "Amixtlan",
    gender: "Femenino",
    bloodGroup: "O+",
    curp: "AUAJ031207MPLHMNA6",
    birthdate: DateTime(2003, 12, 7),
    isActive: true,
    createdAt: DateTime.now(),
  );
  print("""-------------------------------PERSONA 1: NUEVO-------------------------------------""");
  print(juanPerez);

  // Caso de prueba 2: Un nuevo paciente que alguna vez fue trabajador del hospital
  final marthaFlores = Person(
    ID: 251,
    name: "Emmanuel",
    firstLastname: "Gonzalez",
    gender: "Masculino",
    bloodGroup: "A-",
    birthdate: DateTime(2008, 8, 15),
  );
    print("""-------------------------------PERSONA 2: FUÉ TRABAJADOR-------------------------------------""");
  print(marthaFlores);

  // Caso de prueba 3: Un paciente que acaba de fallecer
  final fallecido = Person(
    ID: 252,
    name: "Anddrea",
    firstLastname: "Lopez",
    gender: "Femenino",
    bloodGroup: "O-",
    birthdate: DateTime(1862, 8, 25),
    isActive: false,
    createdAt: DateTime(2020, 8, 13),
  );
  fallecido.registerDeath();
    print("""-------------------------------PERSONA 3: FALLECIDA-------------------------------------""");
  print(fallecido);
}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  void registerDeath() {
    isActive = false;
    print("Registrando fallecimiento...");
  }

  @override
  String toString() {
    final String formattedBirthDate = "${birthdate.day.toString().padLeft(2, '0')}/" +
        "${birthdate.month.toString().padLeft(2, '0')}/" +
        "${birthdate.year}";

    final String formattedCreatedDate = "${createdAt.day.toString().padLeft(2, '0')}/" +
        "${createdAt.month.toString().padLeft(2, '0')}/" +
        "${createdAt.year} ${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}:${createdAt.second.toString().padLeft(2, '0')}";

    curp ??= "No registrado";
    if (curp == "") curp = "No registrado";

    String status = isActive ? "Activo" : "Inactivo";

    return '''
  ID: $ID,
  Nombre: $name $firstLastname ${secondLastname ?? ""},
  Género: $gender,
  Grupo Sanguíneo: $bloodGroup,
  Fecha de Nacimiento: $formattedBirthDate,
  CURP: $curp,
  Activo: $status,
  Fecha de registro: $formattedCreatedDate
  ''';
  }
}
------------------------------------------------------------------------------------------
