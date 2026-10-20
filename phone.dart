class Phone {
  String brand;
  String model;
  int storageGB;

  double _price;
  int _batteryLevel = 100;

  Phone({
    required this.brand,
    required this.model,
    required this.storageGB,
    required double price,
  }) : _price = price;

  double get price => _price;

  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print('Invalid price for $brand $model. Price must be greater than 0.');
    }
  }

  int get batteryLevel => _batteryLevel;

  void usePhone(int minutes) {
    int batteryDrained = (minutes / 10).round();
    if (_batteryLevel - batteryDrained >= 0) {
      _batteryLevel -= batteryDrained;
      print('Used $brand $model for $minutes mins. Battery now at $_batteryLevel%.');
    } else {
      _batteryLevel = 0;
      print('$brand $model ran out of battery!');
    }
  }

  void chargePhone(int amount) {
    if (_batteryLevel + amount <= 100) {
      _batteryLevel += amount;
    } else {
      _batteryLevel = 100;
    }
    print('Charged $brand $model. Battery now at $_batteryLevel%.');
  }

  void displayInfo() {
    print('----------------------------------------');
    print('Brand: $brand');
    print('Model: $model');
    print('Storage: $storageGB GB');
    print('Price: ₱${_price.toStringAsFixed(2)}');
    print('Battery: $_batteryLevel%');
    print('----------------------------------------');
  }
}

void main() {
  Phone phone1 = Phone(
    brand: 'Apple',
    model: 'iPhone 17 Pro',
    storageGB: 256,
    price: 69990.00,
  );

  Phone phone2 = Phone(
    brand: 'Samsung',
    model: 'Galaxy S26 Ultra',
    storageGB: 512,
    price: 84990.00,
  );

  List<Phone> inventory = [phone1, phone2];

  phone1.usePhone(120);
  phone2.usePhone(300);

  phone1.chargePhone(15);

  phone1.price = 65990.00;

  print('\n=== PHONE INVENTORY REPORT ===\n');

  for (var phone in inventory) {
    phone.displayInfo();
  }
}