// ignore_for_file: unnecessary_getters_setters

abstract class PaymentStrategy {
  void pay(double amount);
}

class VisaCardPayment extends PaymentStrategy {
  @override
  void pay(double amount) {
    print("Using Visa Card to pay $amount EGP");
  }
}

class MobileWalletPayment extends PaymentStrategy {
  @override
  void pay(double amount) {
    print("Using Mobile Wallet to pay $amount EGP");
  }
}

class PaymentManager {
  PaymentStrategy? _strategy;

  set strategy(PaymentStrategy? strategy) => _strategy = strategy;

  PaymentStrategy? get strategy => _strategy;

  void processPayment(double amount) {
    if (_strategy == null) {
      print("Payment Strategy not set yet.");
      return;
    }
    _strategy!.pay(amount);
  }
}
