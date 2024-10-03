void main() {}

enum Orderstate {
  Pending,
  Shipped,
  Delivery,
  Canceled,
}

class Order {
  String? Customerid;
  String? Customername;
  String Orderstatus;

  Order(this.Customerid, this.Customername, this.Orderstatus);

  void customer_status_detail() {
    switch (Orderstatus) {
      case Orderstate.Pending:
        print("Order status:${Orderstate.Pending.name}");
      case Orderstate.Shipped:
        print("Order Status:${Orderstate.Shipped.name}");
      case Orderstate.Delivery:
        print("Order Status:${Orderstate.Delivery.name}");
      case Orderstate.Canceled:
        print("Order status:${Orderstate.Canceled.name}");
    }

    print("Customer id:$Customerid");
    print("Customer name:$Customername");
    print("Cus");
  }
}



/*
class Order {
  final String orderId;
  final String customerName;
  OrderStatus status;

  Order(this.orderId, this.customerName) : status = OrderStatus.PENDING;

  void updateStatus(OrderStatus newStatus) {
    // Check for valid status transitions
    if (_canTransitionTo(newStatus)) {
      status = newStatus;
      print("Order $orderId status updated to: ${status.name}");
    } else {
      print("Invalid status transition from ${status.name} to ${newStatus.name}");
    }
  }

  bool _canTransitionTo(OrderStatus newStatus) {
    // Define valid transitions
    switch (status) {
      case OrderStatus.PENDING:
        return newStatus == OrderStatus.SHIPPED || newStatus == OrderStatus.CANCELLED;
      case OrderStatus.SHIPPED:
        return newStatus == OrderStatus.DELIVERED;
      case OrderStatus.DELIVERED:
        return false; // No further transitions
      case OrderStatus.CANCELLED:
        return false; // No further transitions
    }
  }

  void displayOrderDetails() {
    print("Order ID: $orderId");
    print("Customer Name: $customerName");
    print("Current Status: ${status.name}");
  }
}













void main() {
  // Create a new order
  Order order1 = Order("12345", "John Doe");
  
  // Display initial order details
  order1.displayOrderDetails();
  
  // Update order status
  order1.updateStatus(OrderStatus.SHIPPED);
  order1.displayOrderDetails();

  // Try to update to an invalid status
  order1.updateStatus(OrderStatus.CANCELLED); // This should fail
  
  // Update to delivered
  order1.updateStatus(OrderStatus.DELIVERED);
  order1.displayOrderDetails();
}
*/