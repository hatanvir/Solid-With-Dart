///A class should only be responsible for one thing that means a class could change for only one reason.

class UserDao{
  void getUserDataFromLocalDb(){
    print('Local sata fetched...');
  }
}

class UserService{
  void getUserDataFromRemote(){
    print('Remote sata fetched...');
  }
}
///here we separated local/remote data fetching functions into two class
///and these two class is responsible for fetching local/remote data separately