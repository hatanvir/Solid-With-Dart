///A class should only be responsible for one thing that means a class could change for only one reason.

class User{
  void getUserDataFromLocalDb(){
    print('Local sata fetched...');
  }

  void getUserDataFromRemote(){
    print('Remote sata fetched...');
  }
}

///As we can see here SrpBad is responsible for two reasons one for remote data fetching and another is local data fetching
///and its breaks the SRP rules.