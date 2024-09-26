void main() {
  final double totalCarList;
  //1. Lllamado de una función sin parámetros
  greetEveryone();

  //2. LLamado de una función que retorna valores
  //a) Sin almacenar el valor en una variable
  print("Hoy es el dia número: ${getDayNumber()} del mes");

  //b) Almacenando el valor de la función en una nueva variable
  final int diaMes;
  diaMes = getDayNumber();
  print("En tres días será: ${diaMes+3}");
  
  //3. Llamado de una función con un solo parámtro obligatorio
  //a) Llamado correcto
  print(greetSomeone("Janeth"));
  //b) Llamado incorrecto con parametros 
  print(greetSomeone(4));
  print(greetSomeone(-312));
  print(greetSomeone(43.141516));
  print(greetSomeone(true));
print("-----------------------------------------------------------------");

//C) MISMO EXPERIMENTO PERO AHORA CON LA FUNCION  PARAMETROS TIPADOS
/*print(greetSomeoneTyped("Bruno"));
print(greetSomeoneTyped(4));
print(greetSomeoneTyped(-312));
print(greetSomeoneTyped(3.1415));
print(greetSomeoneTyped(true));
*/
/*3.2
 print(greetSomeone()); Esta no se puede ejecutar porque si no se define 
 los parametros de una funcion por defaul estan definidos como obligatorios
 */
  //4. Llamado de una funcion con parametros opcionales
  //4.1 ENCVIANDO AMBOS PARAMETROS
  print(greetHourOfDay("Alexis",9));
  //4.2 SOLO ENVIADO EL OBLIGATORIO
  print(greetHourOfDay("Bruno", null));

  //5. FUNCIONES LAMBDA -Las funciones lambda, mejor conocidas cómo funciones 
  //anonimas o funciones simplificadas se ejecutas de manera simple y no frecuentre en la ejecución de un  programa o sistema, las funciones flecha solo deben llevar una isntruccion
  var calculaCosto =(double productQueantity, double productPrice,
  double percentageDiscount) => (productQueantity * productPrice)*((100-percentageDiscount)/100);

  double cantidadProducto = 5;
  double precioProducto = 125.50;
  double descuento = 2.5;
  print("""
  Costo del producto: ${cantidadProducto}
  Cantidad: ${cantidadProducto}
  Descuento: ${descuento}
  --------------------------------------------
  Costo del carrito de compras: ${calculaCosto(cantidadProducto, 
  precioProducto, descuento)}
  """);
}

//FUNCIONES Y PARAMETROS 
  
  //DECLARACION
  
  //1. FUNCION SIN PARAMETROS
void greetEveryone()

{
  print("Hola a todas y todos :D");
}
//2. Funcion sin parametro, que retorna datos 
getDayNumber()
{
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

//3. FUNCION QUE RECIBE UN PARAMETRO, EN DART SI NO SE ESPECIFICA COMO OPCIONAL SIEMPRE SERA OBLIGATORIO
String greetSomeone(personName)
{
  return("Hola, ${personName}");
}

String greetSomeoneTyped(String personName)
{
  return("Hola, ${personName}");
}


// 4. FUNCIÓN CON PARÁMETROS OPCIONALES
//int? Puede ser opcional  --NullSafety
String greetHourOfDay(String personName, int? hora) {
  hora ??= DateTime.now().hour;
  print("Hora: ${hora}");
  String saludo;

  if (hora >= 6 && hora < 12) {
    saludo = "Buenos días";
  } else if (hora >= 12 && hora < 18) {
    saludo = "Buenas tardes";
  } else {
    saludo = "Buenas noches";
  }

  return "${saludo}, ${personName}";
}
