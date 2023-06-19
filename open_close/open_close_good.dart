///An entity should be open for extensions but closed for modification

abstract class UserDao{
  getData();
}

class LocalDao extends UserDao{
  @override
  getData() {
    print('Local data fetched...');
  }

}

class RemoteDao extends UserDao{
  @override
  getData() {
    print('Remote data fetched...');
  }
}

class SdCardDao extends UserDao{
  @override
  getData() {
    print('SdCard data fetched...');
  }
}

///if we see here, we can see that getData method is always fixed
///if we need to get data from multiple source then we just extended UserDao
///and we dont need to modify UserDao class
