void main() {
  Person p = Person("John");
  p.greets();
}

mixin Greeter {
  void greet(String message) {
    print("Hello $message");
  }
}

class Person with Greeter {
  String? name;

  Person(this.name);

  void greets() {
    greet(name!); // Use '!' to assert that name is not null.
  }
}
