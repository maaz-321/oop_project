void main() {
  WashigMachine washes = WashigMachine("500watt", "Automatic", 50);
  washes.showdetails();
}

class Appliance {
  String power;
  int brand;

  Appliance(this.power, this.brand);

  void showdetails() {
    print("Power:$power");
    print("Brand:$brand");
  }
}

mixin EnergySavings {
  String? Energy;
  void EnergyRating() {
    print("Energies:$Energy");
  }
}

class WashigMachine extends Appliance with EnergySavings {
  String? e;
  WashigMachine(
    String e,
    String brand,
    int power,
  ) : super(brand, power) {
    this.Energy = e;
  }

  void showdetails() {
    super.showdetails();
    EnergyRating();
  }
}
