

enum IdentificadorType {
  DNI,
  LICENSE
}

class Person {

  String? name;
  String? lastName;
  IdentificadorType? identificador_type;
  int? identificador_number;
  String? user_type;

  factory Person(
    String name, 
    String lastName, 
    IdentificadorType identificador_type, 
    int identificador_number
  ){
    if (identificador_type == IdentificadorType.LICENSE) {
      return Person.professional(identificador_type);
    }
    else {
      return Person.user(identificador_type);
    }
  }

  Person.user( IdentificadorType identificador_type ){
    this.name = name;
    this.lastName = lastName;
    this.identificador_type = identificador_type;
    this.identificador_number = identificador_number;
    this.user_type = 'User';
  }

  Person.professional( IdentificadorType identificador_type ){
    this.name = name;
    this.lastName = lastName;
    this.identificador_type = identificador_type;
    this.identificador_number = identificador_number;
    this.user_type = 'Professional';
  }

  String toString() {
    return { 'name': name, 'lastName': lastName, 'identificador_type': identificador_type, 'identificador_number': identificador_number, 'user_type': user_type }.toString();
  }

}

void main(List<String> args) {
  
  Person professional1 = Person('Jus', 'Los', IdentificadorType.LICENSE, 67456);
  Person professional2 = Person('Lau', 'Diaz', IdentificadorType.LICENSE, 43523);
  Person usuario1 = Person('Sau', 'Trap', IdentificadorType.DNI, 76556);
  Person usuario2 = Person('Muri', 'Kaus', IdentificadorType.DNI, 1765);

  print(professional1);
  print(professional2);
  print(usuario1);
  print(usuario2);

}