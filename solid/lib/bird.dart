abstract class Bird {
  void fly();
}

class Eagle extends Bird {
  @override
  void fly() {
    print('Eagle is flying');
  }
}

class Penguin extends Bird {
  @override
  void fly() {
    throw Exception('Penguin cannot fly');
  }
}