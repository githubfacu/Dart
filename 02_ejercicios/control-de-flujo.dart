import 'dart:io';

main() {
  
  stdout.writeln('Ingresar texto');

  String? inputText = stdin.readLineSync();

  stdout.writeln('texto ingresado: $inputText');

  stdout.writeln('Ingresar número');

  int inputNumber = int.parse(stdin.readLineSync() ?? '0');

  stdout.writeln('número ingresado: $inputNumber');

  // Map<int, String> nivelacion = {
  //   0: 'CIUDADANO',
  //   1: 'MAYOR',
  //   2: 'MENOR',
  // };

  // if (inputNumber >= 21) {
  //   stdout.writeln('número ingresado: $inputNumber, ${nivelacion[0]}');
  // } else if (inputNumber >= 18) {
  //   stdout.writeln('número ingresado: $inputNumber, ${nivelacion[1]}');
  // } else {
  //   stdout.writeln('número ingresado: $inputNumber, ${nivelacion[2]}');
  // }

  for (var i = 1; i <= 10; i++) {
    int total = inputNumber * i;
    print('$inputNumber * $i = $total');
  }

}