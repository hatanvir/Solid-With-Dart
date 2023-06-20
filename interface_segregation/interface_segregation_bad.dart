///The Interface Segregation Principle (ISP) states that clients should not be forced to depend upon interface members they do not use.
///Interface segregation principle Bad

abstract class BaseFetch{
  void saveUserInfoFromLocalDb();
  void getUserInfoFromLocalDb();

  void saveUserInfoFromRemote();
  void getUserInfoFromRemote();
}

///here service is only responsible for handling user-related server requests.
///but unfortunately there are some extra methods implemented like fetching data from local db, sd cards
///those methods are unusual, we are not gonna use those anymore
///and it breaks ISP rule
///we will solve it on interface_segregation_good file

class UserService extends BaseFetch{
  @override
  void getUserInfoFromLocalDb() {
    print('This method is not relevant to service class');
  }

  @override
  void getUserInfoFromRemote() {
    print('Fetching data from server');
  }

  @override
  void saveUserInfoFromLocalDb() {
    print('This method is not relevant to service class');
  }

  @override
  void saveUserInfoFromRemote() {
    print('Saving data on server');
  }

}