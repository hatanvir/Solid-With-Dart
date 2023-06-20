
///The Interface Segregation Principle (ISP) states that clients should not be forced to depend upon interface members they do not use.
///Interface segregation principle Good

abstract class LocalFetch{
  void saveUserInfoFromLocalDb();
  void getUserInfoFromLocalDb();
}

abstract class RemoteFetch{
  void saveUserInfoFromRemote();
  void getUserInfoFromRemote();
}

class UserService extends RemoteFetch{
  @override
  void getUserInfoFromRemote() {
    print('Fetching data from server');
  }

  @override
  void saveUserInfoFromRemote() {
    print('Saving data on server');
  }

}

class UserDao extends LocalFetch{
  @override
  void getUserInfoFromLocalDb() {
    print('Fetching data from local db');
  }

  @override
  void saveUserInfoFromLocalDb() {
    print('saving data on local db');
  }
}

///here we segregate our method into two interface
///one for local and another one is for server
///and if we use those, no irrelevant method needs to implement