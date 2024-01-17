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

  void saveToFirebase() {
    // save to database
  }

  void sendVerificationMail() {
    // send verification mail
  }
}