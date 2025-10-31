

void main(List<String> args) {
  
  Future<bool> promesaTimeOut1 = Future.delayed( 
    Duration(seconds: 3), () {
      print('pasan 3 segundos');

      if (1 != 1) {
        throw false;
      }
      return true;
    });

  // promesaTimeOut1.then((res) => {print(res)});
  promesaTimeOut1.then(print).catchError((onError) => print(onError));

  print('Fin del main');
}