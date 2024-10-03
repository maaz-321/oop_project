/*Define a mixin Worker with a method work() that prints "Working!".
Create a class Robot that has its own work() method that prints "Robot working!".
Implement a class Android that uses the Worker mixin. Resolve the conflict by overriding the work() method in Android to call both the mixin's and the class's work() methods.


*/

mixin Worker {
  void work() {
    print("Working!....");
  }
}

class Robot {
  void work() {
    print("Robot Working....");
  }
}

class Android extends Robot with Worker {
  @override
  void work() {
    super.work(); // Call the Robot's work methood
  }
}
