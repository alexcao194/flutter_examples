class User {
  String? name;
  String? mail;
  String? password;

  User(this.name, this.mail, this.password);

  bool isValid() {
    if (name == null || name!.isEmpty) {
      return false;
    }

    if (mail == null || mail!.isEmpty) {
      return false;
    }

    if (password == null || password!.isEmpty) {
      return false;
    }

    return true;
  }
}


interface class UserRepository {
  void saveUser(User user) {
    // save to db
  }
}

class UserRepositoryWithFirebase implements UserRepository {
  void saveUser(User user) {
    // save to firebase with Firebase SDK
  }
}

class UserRepositoryWithMongoDB implements UserRepository {
  void saveUser(User user) {
    // save to MongoDB with MongoDB SDK
  }
}

class Authentication {
  UserRepository userRepository;

  Authentication(this.userRepository);

  void register(User user) {
    if (user.isValid()) {
      userRepository.saveUser(user);
    }
  }
}