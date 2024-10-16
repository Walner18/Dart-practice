enum DiaSemana {
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  TRUSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY,
}

extension operacion on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void ex4() {
  print('Ingrese un número entero del 1 al 7:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? numero = int.tryParse(input);

    if (numero != null && numero >= 1 && numero <= 7) {
      if (numero.esPar()) {
        print('El número $numero es par.');
      } else {
        print('El número $numero es impar.');
      }

      DiaSemana dia = DiaSemana.values[numero - 1];
      print('El día correspondiente es: ${dia.toString().split('.').last}');
    } else {
      print('Por favor, ingrese un número válido del 1 al 7.');
    }
  }
}
