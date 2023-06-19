///The LSP states that subclasses should be replaced with superclasses without changing the logical correctness of the program
///LiskovBad

abstract class Bird{
  void eat();
}

abstract class FlyingBird extends Bird{
  void fly();
}

class Eagle extends FlyingBird{
  @override
  void eat() {
    print('Eat');
  }

  @override
  void fly() {
    print('Fly');
  }
}

class Penguin extends Bird{
  @override
  void eat() {
    print('Eat');
  }
}

void main(){
  FlyingBird bird = Eagle();
  bird.eat();
  bird.fly();
}

///here we can see every subclass is replaceable for its superClass