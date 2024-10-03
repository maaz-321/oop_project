void main() {
  Athlete a = Athlete();
  a.swim();
  a.run();
}

mixin runer {
  void run() {
    print("Running.....");
  }
}

mixin swimer {
  void swim() {
    print("Swiming.....");
  }
}

class Athlete with runer, swimer {
  void performanceactivity() {
    run();
    swim();
  }
}
