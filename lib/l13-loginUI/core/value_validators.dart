String validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return input;
  } else {
    return 'Invalid email';
  }
}

String validatePassword(String input) {
  if (input.length >= 6) {
    return input;
  } else {
    return 'Invalid password';
  }
}
