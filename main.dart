
import 'liskovs_substitution/liskov_substitution_good.dart';

void main(){
  FlyingBird bird = Eagle();
  bird.eat();
  bird.fly();
}