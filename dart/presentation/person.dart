import 'mixin.dart';

class Person with Shouting {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
}
