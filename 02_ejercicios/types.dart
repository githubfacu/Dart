
import 'dart:collection';

void main() {
  
  Queue<int> cola = new Queue();

  cola.addAll([10,20,30,40,50]);

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }


  Audio Volumen = Audio.medio;

  switch (Volumen) {
    case Audio.bajo:
      print('Audio bajo');
      break;
    case Audio.medio:
      print('Audio medio');
      break;
    case Audio.alto:
      print('Audio alto');
      break;
    }
}


enum Audio{
  bajo,
  medio,
  alto
}