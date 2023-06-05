import 'generals.dart';

abstract class Person implements SaveInfo {
  String name;
  int age;
  
  Person(this.name, this.age) {}
  Person.Empty() : this('', 0);

  @override
  String toString() {
    return 'Name:$name\nAge:$age';
  }
}