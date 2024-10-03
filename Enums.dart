void main() {
  Status st1 = Status.active;
  Status st2 = Status.pending;

  printStatus(st1);
  printStatus(st2);
}

enum Status {
  active,
  inactive,
  pending,
}

void printStatus(Status st1) {
  switch (st1) {
    case Status.active:
      print("Status is active");
      break;
    case Status.inactive:
      print("Status is inactive");
      break;
    case Status.pending:
      print("Status is pending");
      break;
  }
}
