class Validator{
  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static String? validateUserEmailAddress(email){
    final _hasMatched = _emailRegex.hasMatch(email);
    if (email.isEmpty){
      return 'Please enter Email id.';
    }
    if(!_hasMatched){
      return 'Please enter valid Email.';
    }
    else {
      return null;
    }
  }

  static final RegExp _passwordRegex = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static String? validatePasswordAddress(password) {
    final _hasMatched = _passwordRegex.hasMatch(password);
    if(password.isEmpty){
      return 'Please enter Password';
    }
    if (!_hasMatched) {
      return 'Please enter valid Password.';
    } else {
      return null;
    }
  }
}
