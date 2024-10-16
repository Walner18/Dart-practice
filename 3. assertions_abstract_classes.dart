abstract class Animal {
  void eat();
}

class Dog extends Animal {
  String name;
  int age;

  Dog({required this.name, required this.age}) : assert(age > 0, 'Age must be greater than 0');

  @override
  void eat() {
    print('$name is eating.');
  }
}

void main() {
  Dog dog = Dog(name: 'Rex', age: 3);
  dog.eat();
}
