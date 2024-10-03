import 'dart:io';

void main()
{
  //Contructores nombrados 
  //CASO DE PRUEBA 2
  final janethAmixtlan = Person(
      ID: 250,
      name: "Janeth",
      firstLastname: "Ahuacatitla",
      secondLastname: "Amixtlan",
      gender: "Mujer",
    bloodGroup: "O+",
    curp: "AUAJ031207MPLHMNA6",
    birthdate: DateTime(2003,12,07),
    isActive: true,
    createdAt: DateTime(2024,09,2024,11,05,16),
  );

  print(janethAmixtlan);
  
  //Caso de prueba 2
  final marthaFlores = Person(
    ID: 125,
    name: "Martha",
    firstLastname: "Flores",
    gender: "Mujer",
    bloodGroup: "O-",
    birthdate:  DateTime(2008,01,08));

  print(marthaFlores);
}


  class Person
    {
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

  Person(
    {
      required this.ID,
      required this.name,
      required this.firstLastname,
      this.secondLastname,
      required this.gender,
      required this.bloodGroup,
      this.curp,
      required this.birthdate,
      this.isActive = true,
      DateTime? createdAt,
      this.updatedAt

    }
  ) : createdAt = createdAt ??  DateTime.now();


@override
String toString()
{
  String formatedBirthDate =   "${birthdate.day.toString().padLeft(2,'0')}/"+
    "${birthdate.month.toString().padLeft(2,'0')}/${birthdate.year}";

  String formatedCreateDate =   "${createdAt.day.toString().padLeft(2,'0')}/" +
    "${createdAt.month.toString().padLeft(2,'0')}/${createdAt.year}
  ${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2,'0')}:
    ${createdAt.second.toString().padLeft(2,'0')}";

  curp??= "No registrado";
  if(curp == "") curp = "No registrado";
  
  final String status = "Sin definir";
  
  if(isActive)
    status = "Activo";
  else
    status = "Inactivo";
  
    
  return """
  -------------------------------------------------------
  DATOS DE LA PERSONA
  ---------------------------------------------
  ID: $ID,
  Nombre: $name $firstLastname $secondLastname
  Género: $gender
  Grupo Sanguíneo: $bloodGroup
  Fecha de Nacimiento: $birthdate
  CURP: $curp
  Activo: $isActive
  Fecha de Registro:  $formatedCreateDate
  -------------------------
  """;
 }
}