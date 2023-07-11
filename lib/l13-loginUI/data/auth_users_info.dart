class AuthenticationRepository {
  Map<String, String> users = {
    'something.smth@gmail.com': '123456',
    'apple.123@gmail.com': '102938',
  };

  bool isEmailAndPasswordExists(
      String emailAddressValue, String passwordValue) {
    if (users.containsKey(emailAddressValue) &&
        users.containsValue(passwordValue)) {
      return true;
    } else {
      return false;
    }
  }

  bool isRegistered(String confirmedPasswordValue, String passwordValue,
      String emailAddress) {
    bool emailIsNotEmpty = emailAddress.isNotEmpty;
    bool passwordIsNotEmpty = passwordValue.isNotEmpty;

    if (emailIsNotEmpty && passwordIsNotEmpty) {
      if (confirmedPasswordValue == passwordValue) {
        users[emailAddress] = passwordValue;
        return true;
      }
      return false;
    } else {
      return false;
    }
  }
}
