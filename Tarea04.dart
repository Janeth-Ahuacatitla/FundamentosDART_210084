void main() {
  // Caso 1: Nuevo Paciente registrado hoy
    print('.............................Caso 1. Paciente Nuevo..................');
  print(
      '--------------------------------PERSONA 1------------------------------------------');
  final paciente1 = Paciente(
    id: 256,
    cortesyTitle: "Ing",
    nombre: 'Janeth',
    primer_apellido: 'Ahuacatitla',
    segundo_apellido: 'Amixtlan',
    genero: 'Femenino',
    grupoSanguineo: 'O+',
    fechaNacimiento: DateTime(2003, 12, 7),
    curp: 'AUAJ031207MPLHMNA6',
    estatus: 'Activo',
    nss: '4646421656',
    tipoSeguro: 'Publico IMSS',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime.now(),
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Nuevo
  ); 
  paciente1.imprimirDatosPaciente();
  // Caso 2: Paciente que fue trabajador del hospital con fecha de registro anterior
  print('');
   print('..................................Caso 2. Paciente que fue trabajador......................');
  print(
      '-------------------------------2: PERSONA QUE FUÉ TRABAJADOR-------------------------------');
  final paciente2 = Paciente(
    id: 257,
    cortesyTitle: "Especialista",
    nombre: 'Lucía',
    primer_apellido: 'Cordero',
    segundo_apellido: 'Villanueva',
    genero: 'Female',
    grupoSanguineo: 'AB-',
    fechaNacimiento: DateTime(1985, 12, 10),
    curp: 'COVL950422FJALDNX',
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
  print('');
   print('.................................Caso 3. Paciente que acaba de fallecer.............................');
  print(
      '-------------------------------------3: PERSONA FALLECIDA--------------------------------------------------');
  final paciente3 = Paciente(
    id: 258,
    cortesyTitle: "Sra",
    nombre: 'Mariana',
    primer_apellido: 'Sánchez',
    segundo_apellido: 'Domínguez',
    genero: 'Female',
    grupoSanguineo: 'O-',
    fechaNacimiento: DateTime(1970, 4, 25),
    curp: 'SADM900315FDFNNX',
    estatus: 'Activo',
    nss: '5678912345',
    tipoSeguro: 'Publico IMSS ',
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
    print('ID: $id');
    print('Nombre: $nombre');
    print('Primer Apellido: $primer_apellido');
    print('Segundo Apellido: $segundo_apellido');
    print('Género: $genero');
    print('Grupo Sanguíneo: $grupoSanguineo');
    print('Fecha de Nacimiento: ${fechaNacimiento.year}-${_twoDigits(fechaNacimiento.month)}-${_twoDigits(fechaNacimiento.day)}');
    print('CURP: $curp');
    print('Fecha de Registro: $fechaRegistro');
    print('Estatus Médico: ${estatus.toString().split('.').last}'); // Seleccion Enum
     
    print(
        '-------------------------------------------------------');
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
    print('Paciente: ${tipoUsuario.toString().split('.').last}'); // Seleccion Enum
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