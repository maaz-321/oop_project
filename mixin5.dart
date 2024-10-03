void main() {
  Product p = Product(50, 800);

  p.show_edetails();
}

mixin Discount {
  void discount_offer(d) {
    print("Discount:$d");
  }
}
mixin Inventories {
  void inventories_offer(i) {
    print("Inventory:$i");
  }
}

class Product with Discount, Inventories {
  int? d;
  int? i;
  Product(this.d, this.i);
  void show_edetails() {
    discount_offer(d);
    inventories_offer(i);
  }
}
