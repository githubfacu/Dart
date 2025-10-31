
import 'dart:async';

void main(List<String> args) {
  
  final streamController = StreamController();

  streamController.stream.listen(
    (data) => print('desplegando $data'),
    onError: (err) => print(err),
    onDone: () => print('sincronización completa'),
    cancelOnError: false
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Error en despliegue');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 18');

  streamController.sink.close();

  print('fin del main');

}