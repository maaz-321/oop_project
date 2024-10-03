void main() {
  DeviceManager dm = DeviceManager("Solar_device", DeviceStatus.on);

  dm.deviceStatus_value();
  print(dm.devicetype);
}

enum DeviceStatus { on, off, standy }

class DeviceManager {
  String devicetype;
  DeviceStatus devicestatus;

  DeviceManager(this.devicetype, this.devicestatus);

  void deviceStatus_value() {
    switch (devicestatus) {
      case DeviceStatus.on:
        print("Status:${DeviceStatus.on.name}");
      case DeviceStatus.off:
        print("Status:${DeviceStatus.off.name}");
      case DeviceStatus.standy:
        print("Status:${DeviceStatus.standy.name}");
    }
  }
}
