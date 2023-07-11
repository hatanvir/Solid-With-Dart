
///High-level modules should not depend on low-level modules. Both should depend on abstractions.
///Abstractions should not depend on details. Details should depend on abstractions.

///this class is responsible for handling local data
///such as saving user data and getting user data
///if we need to access user data through remote (server)
///then we need to create another class to handle  remote (server) data
///and this breaks Dependency Inversion principle
///we will see good example on dependency_inversion_good file
class UserDao{
  void saveUserData() {
    ///saving user data
  }

  void getUSerData() {
    //getting user data
  }
}