

main(){

  int a = 10;
  double b = 4.5;

  print('¿es \'a\' un int?: ${a is int}');

  int? c = null;

  int _a = 100;
  double $b = 40.5;

  // print(_a + $b);

  String multilineaText = '''
    Texto empieza aqui,
    Continua...
    Algo más, $a
    fin.
  ''';

  print(multilineaText);

  List<String> myListDart = ['string1', 'string2'];

  Set<String> listConvert = myListDart.toSet();

  print(listConvert);

  Map<double, dynamic> WCAG = {
    1.1: 'Directiva 1.1',
    1.2: 'Directiva 1.2',
    1.3: 'Directiva 1.3',
    1.4: 'Directiva 1.4',
    2.1: 'Directiva 2.1',
    2.2: 'Directiva 2.2',
    2.3: 'Directiva 2.3',
    3.1: 'Directiva 3.1',
    3.2: 'Directiva 3.2',
    3.3: 'Directiva 3.3',
    4.1: 'Directiva 4.1',
  };

  print(WCAG);
  print(WCAG[4.1]);

}