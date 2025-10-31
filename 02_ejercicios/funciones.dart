

String UpperNormalized ( String text ){
  return text.toUpperCase();
}

String PrintManyTimes ( String text, { int? quantity , bool is_private = false } ){
  
  if (is_private) {
    return 'PRIVATE';
  } else {
    return '$text $quantity';
  }
}

main() {
  
  print(UpperNormalized('algo'));
  print(PrintManyTimes('My name', is_private: false, quantity: 8));
}