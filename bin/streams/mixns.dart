


mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

class Duck with Swimming, Flying {
  // Duck has access to swim() and fly() methods
}

class Fish with Swimming {
  // Fish has access to swim() method
}

void main() {
  Duck duck = Duck();
  duck.swim(); // Output: Swimming...
  duck.fly(); // Output: Flying...

  Fish fish = Fish();
  fish.swim(); // Output: Swimming...
}