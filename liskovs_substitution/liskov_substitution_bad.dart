///The LSP states that subclasses should be replaced with superclasses without changing the logical correctness of the program
///LiskovBad

abstract class Bird{
  void eat();
  void fly();
}

class Eagle extends Bird{
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

  ///this fly function is not relevant for Penguin and its breaks the LSP rules
  @override
  void fly() {
    print('not possible to fly for Penguin');
  }

}

void main(){
  Bird bird = Penguin();
  bird.eat();
  bird.fly();/// not possible
}


///this problem resolves in liskov_substitution_good folder