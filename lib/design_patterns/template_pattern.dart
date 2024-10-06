abstract class IceCream {
  void make() {
    prepareBase();
    addFlavors();
    freeze();
    serve();
  }

  void prepareBase() {
    print('Preparing icecream base');
  }

  void addFlavors();

  void freeze() {
    print('Icecream is being freezed now');
  }

  void serve() {
    print('Icecream is being served now');
  }
}

class VanillaIceCream extends IceCream {
  @override
  void addFlavors() {
    print("Adding Vanilla flavor to icecream");
  }
}

class ChocolateIceCream extends IceCream {
  @override
  void addFlavors() {
    print("Adding Chocolate flavor to icecream");
  }
}

class StrawberryIceCream extends IceCream {
  @override
  void addFlavors() {
    print("Adding Strawberry flavor to icecream");
  }
}
