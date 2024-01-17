abstract class Sleepable {
  void sleep();
}

abstract class Flyable {
  void fly();
}

class Eagle implements Sleepable, Flyable {
  @override
  void fly() {
    print('Eagle is flying');
  }

  @override
  void sleep() {
    print('Eagle is sleeping');
  }

}

class MechanicalBird implements Flyable {
  @override
  void fly() {
    print('Mechanical bird is flying');
  }

  @override
  void sleep() {
    print('Mechanical bird is sleeping');
  }
}