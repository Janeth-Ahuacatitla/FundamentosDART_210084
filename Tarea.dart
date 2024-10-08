void main() {
  // Caso 1: Nuevo Paciente registrado hoy
   print('-------------------------------------PERSONA 1--------------------------------------------------');
  final paciente1 = Paciente(
    id: 256,
    cortesyTitle: "Pediatra",
    nombre: 'Janeth',
    primer_apellido: 'Ahuacatitla',
    segundo_apellido: 'Amixtlan',
    genero: 'Femenino',
    grupoSanguineo: 'O+',
    fechaNacimiento: DateTime(2003, 12, 7),
    curp: 'AUAJ031207MPLHMNA6',
    estatus: 'Activo',
    nss: '4646421656',
    tipoSeguro: 'IMSS',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime.now(),
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Nuevo
  ); 

  paciente1.imprimirDatosPaciente();

  // Caso 2: Paciente que fue trabajador del hospital con fecha de registro anterior
  print('-------------------------------------2: PERSONA QUE FUÉ TRABAJADOR--------------------------------------------------');
  final paciente2 = Paciente(
    id: 257,
    cortesyTitle: "Especialista",
    nombre: 'Lucía',
    primer_apellido: 'Cordero',
    segundo_apellido: 'Villanueva',
    genero: 'Female',
    grupoSanguineo: 'AB-',
    fechaNacimiento: DateTime(1985, 12, 10),
    curp: 'MARGLOPE12345',
    estatus: 'Activo',
    nss: '0987654321',
    tipoSeguro: 'Publico ISSSTE',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime(2020, 1, 15), // Fecha en la que se registró el paciente
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Registrado
  );

  paciente2.imprimirDatosPaciente();

  // Caso 3: Paciente que acaba de fallecer
    print('-------------------------------------3: PERSONA FALLECIDA--------------------------------------------------');
  final paciente3 = Paciente(
    id: 258,
    cortesyTitle: "Ing.",
    nombre: 'Mariana',
    primer_apellido: 'Sánchez',
    segundo_apellido: 'Domínguez',
    genero: 'Female',
    grupoSanguineo: 'O-',
    fechaNacimiento: DateTime(1970, 4, 25),
    curp: 'PEDLOMAR123456',
    estatus: 'Activo',
    nss: '5678912345',
    tipoSeguro: 'Privado ING',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime(2022, 6, 10),
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Registrado
  );

  paciente3.registrarDefuncion(); 

  paciente3.imprimirDatosPaciente();
}

enum usuario { Nuevo, Registrado, Finado }
enum EstatusVida { Vivo, Fallecido, Desconocido }
enum EstatusMedico { Activo, Inactivo } 
abstract class Persona {
  int id;
  String cortesyTitle;
  String nombre;
  String primer_apellido;
  String segundo_apellido;
  String genero;
  String grupoSanguineo;
  DateTime fechaNacimiento;
  String curp;
  String estatus;
  DateTime fechaRegistro;

  Persona({
    required this.id,
    required this.cortesyTitle,
    required this.nombre,
    required this.primer_apellido,
    required this.segundo_apellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    required this.curp,
    required this.estatus,
    required this.fechaRegistro,
  });

  void imprimirDatosPersona() {
    print('$cortesyTitle. $nombre $primer_apellido $segundo_apellido');
    print('Fecha de Registro: $fechaRegistro');
    
    print('ID: $id');
    print('Nombre: $nombre');
    print('Primer Apellido: $primer_apellido');
    print('Segundo Apellido: $segundo_apellido');
    print('Género: $genero');
    print('Grupo Sanguíneo: $grupoSanguineo');
    print('Fecha de Nacimiento: ${fechaNacimiento.year}-${_twoDigits(fechaNacimiento.month)}-${_twoDigits(fechaNacimiento.day)}');
    print('CURP: $curp');
    print('Estatus Médico: ${estatus.toString().split('.').last}'); // Seleccion Enum
    print('-------------------------Datos Extra del Paciente----------------------------------------------');
  }

  String _twoDigits(int n) {
    return n >= 10 ? '$n' : '0$n';
  }
}


class Paciente extends Persona {
  String nss;
  String tipoSeguro;
  EstatusVida estatusVida;
  String estatusMedico;
  DateTime fechaRegistro;
  DateTime fechaUltimaCita;
  usuario tipoUsuario;

  Paciente({
    required int id,
    required String cortesyTitle,
    required String nombre,
    required String primer_apellido,
    required String segundo_apellido,
    required String genero,
    required String grupoSanguineo,
    required DateTime fechaNacimiento,
    required String curp,
    required String estatus,
    required this.nss,
    required this.tipoSeguro,
    required this.estatusVida,
    required this.estatusMedico,
    required this.fechaRegistro,
    required this.fechaUltimaCita,
    required this. tipoUsuario,
  }) 

    : super(
          id: id,
          cortesyTitle: cortesyTitle,
          nombre: nombre,
          primer_apellido: primer_apellido,
          segundo_apellido: segundo_apellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          fechaNacimiento: fechaNacimiento,
          curp: curp,
          estatus: estatus,
          fechaRegistro: fechaRegistro
        );


  @override
  void imprimirDatosPersona() {
    super.imprimirDatosPersona(); // Llama al método original
    print('${tipoUsuario.toString().split('.').last}'); // Seleccion Enum
    //print('Datos adicionales del paciente:');
    print('NSS: $nss');
    print('Tipo de Seguro: $tipoSeguro');
    print('Estatus de Vida: ${estatusVida.toString().split('.').last}'); // Seleccion Enum
    print('Estatus Médico: ${estatusMedico.toString().split('.').last}'); // Seleccion Enum
    print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
    //print('');
  }

  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
    //print('');
  }

  void registrarDefuncion() {
    estatusVida = EstatusVida.Fallecido;
    estatusMedico = EstatusMedico.Inactivo.toString().split('.').last;
    tipoUsuario= usuario.Finado;
  }


}


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