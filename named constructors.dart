class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void showDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Employee extends Person {
  String position;

  Employee.withPosition({required String name, required int age, required this.position})
      : super(name: name, age: age);

  @override
  void showDetails() {
    super.showDetails();
    print('Position: $position');
  }
}

void main() {
  Employee employee = Employee.withPosition(name: 'Camila', age: 23, position: 'DBA');
  employee.showDetails();
}
