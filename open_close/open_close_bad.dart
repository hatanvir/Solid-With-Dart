///An entity should be open for extensions but closed for modification

class OpenCloseBad{
  void getUserDataFromLocalDb(){
    print('Local data fetched...');
  }

  void getUserDataFromRemote(){
    print('Remote data fetched...');
  }
}

///here, if we want to fetch data from sd card then we need to change this existing code
///and it breaks open-close law
///we will show exact implementation of open-close principles on open_close_good folder