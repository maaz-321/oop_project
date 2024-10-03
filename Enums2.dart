void main() {
  //Genders gender = Genders.Female;

  Person p1 = Person("jassy", Genders.Female, Adminpanles.user);
  Person p2 = Person("jons", Genders.Male, Adminpanles.admin);

  print(Adminpanles.user.name);
  p1.enumsdisplay_values();
  p2.enumsdisplay_values();
  p1.display_all_enums_values();
}

enum Genders { Male, Female, Other }

enum Adminpanles { user, admin }

class Person {
  String name;
  Genders gender;
  Adminpanles adminpanles;

  Person(this.name, this.gender, this.adminpanles);

  void enumsdisplay_values() {
    switch (gender) {
      case Genders.Male:
        print("$name and enum value is: ${Genders.Male.name}");
      case Genders.Female:
        print("$name and enum value is: ${Genders.Female.name}");
      case Genders.Other:
        print("$name and enum value is: ${Genders.Other.name}");
    }
  }

  void display_all_enums_values() {
    for (Genders v in Genders.values) {
      print(v.name);
    }
  }
}
