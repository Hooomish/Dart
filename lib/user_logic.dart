//8
class User{
  late String _email;
}

class AdminUser extends User with Admin {
  AdminUser(String email) {
    _email = email;
  }
}

class GeneralUser extends User {
  GeneralUser(String email) {
    _email = email;
  }
}

mixin Admin on User {
  String getMailSystem() {
    var index = _email.indexOf('@');
    var site = _email.substring(index, _email.length);

    return site;
  }
}

class UserManager<T extends User> {
  final _users = <T>[];

  void addUser(T user) {
    _users.add(user);
  }

  void deleteUser(T user) {
    if(_users.contains(user)){
      _users.remove(user);
    }
  }

  void printUsers() {
    for(var user in _users) {
      if(user is AdminUser){
        var mailSystem = user.getMailSystem(); 
        print(mailSystem);
      }
      else {
        var email = user._email;
        print(email);
      }
    }
  }
}
