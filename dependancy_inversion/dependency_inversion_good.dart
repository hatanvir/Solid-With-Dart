
abstract class User{
  void saveData();
  void getData();
}

class UserDao extends User{
  @override
  void getData() {
    // TODO: implement getData
  }

  @override
  void saveData() {
    // TODO: implement saveData
  }

}

class UserService extends User{
  @override
  void getData() {
    // TODO: implement getData
  }

  @override
  void saveData() {
    // TODO: implement saveData
  }
}

///if need to save local data pass
///UserDao as dependency
///or UserService if data need to handle with server

class UserRepository {
  User user;

  UserRepository(this.user);

}

///so, if want to handle sd card data
///like get user data or post user data to sd card
///then no need to modify existing class
///just need to create a class and extend user class