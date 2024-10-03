void main() {
  Duck d = Duck();

  d.flyinings();
  d.swimming();
}

mixin Swimmer {
  void swimming() {
    print("Swimming the birds");
  }
}

mixin Flyings {
  void flyinings() {
    print("Flying the birds");
  }
}

class Duck with Swimmer, Flyings {
  void quaking() {
    print("Quaking.");
  }
}
