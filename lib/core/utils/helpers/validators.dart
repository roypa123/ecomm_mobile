class Validators {
  static String? validateEmailORMobile(String? value, {bool isEmailId = true}) {
    String emailPattern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    RegExp regex = RegExp(emailPattern);
    if (value == null || value.isEmpty) {
      return "Email or Mobile number can not be empty";
    } else if (!regex.hasMatch(value.trim()) && isEmailId) {
      return "Please enter a valid Email ID";
    } else if (!isEmailId && value.length <= 5) {
      return "Please enter a valid Mobile number";
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    String emailPattern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    RegExp regex = RegExp(emailPattern);
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else if (!regex.hasMatch(value.trim())) {
      return "Incorrect email";
    } else {
      return null;
    }
  }

  static String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return "";
    } else if (value.length != 6) {
      return "";
    } else if (!RegExp(r'^\d+$').hasMatch(value)) {
      return "";
    } else {
      return null;
    }
  }

  static String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else {
      if (!RegExp(r'^.{8,25}$').hasMatch(value)) {
        return "Password must be 8-25 characters, including special characters";
      } else if (!RegExp('.*[a-z].*').hasMatch(value)) {
        return "Should have at least one lower character";
      } else if (!RegExp('.*[A-Z].*').hasMatch(value)) {
        return "Should have at least one upper character";
      } else if (!RegExp(".*[0-9].*").hasMatch(value)) {
        return "Should contain at least one number";
      } else if (!RegExp(".*[!@#&*~\$%_].*").hasMatch(value)) {
        return "Should contain at least one special character";
      } else {
        return null;
      }
    }
  }

  static String? validateLoginPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else {
      if (!RegExp(r'^.{8,25}$').hasMatch(value)) {
        return "Incorrect Password";
      } else if (!RegExp('.*[a-z].*').hasMatch(value)) {
        return "Incorrect Password";
      } else if (!RegExp('.*[A-Z].*').hasMatch(value)) {
        return "Incorrect Password";
      } else if (!RegExp(".*[0-9].*").hasMatch(value)) {
        return "Incorrect Password";
      } else if (!RegExp(".*[!@#&*~\$%_].*").hasMatch(value)) {
        return "Incorrect Password";
      } else {
        return null;
      }
    }
  }

  static String? validateConfirmPassword(
      String? newPassword, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "This field is mandatory";
    } else {
      if (newPassword == null || newPassword.isEmpty) {
        return null;
      } else if (confirmPassword != newPassword) {
        return "Password doesn't match";
      } else {
        return null;
      }
    }
  }

  static String? validateDoNotMatchPassword(
      String? oldPassword, String? newPassword) {
    if (newPassword == null || newPassword.isEmpty) {
      return "This field is mandatory";
    } else if (!RegExp(r'^.{8,25}$').hasMatch(newPassword)) {
      return "Incorrect Password";
    } else if (!RegExp('.*[a-z].*').hasMatch(newPassword)) {
      return "Incorrect Password";
    } else if (!RegExp('.*[A-Z].*').hasMatch(newPassword)) {
      return "Incorrect Password";
    } else if (!RegExp(".*[0-9].*").hasMatch(newPassword)) {
      return "Incorrect Password";
    } else if (!RegExp(".*[!@#&*~\$%_].*").hasMatch(newPassword)) {
      return "Incorrect Password";
    } else {
      if (newPassword == oldPassword) {
        return "New and old passwords are the same";
      } else {
        return null;
      }
    }
  }

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return "This field is mandatory";
    } else if (!RegExp(r'^.{3,8}$').hasMatch(name)) {
      return "Name should between 3 and 8 characters";
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(name)) {
      return "Name should contain only alphabets";
    } else if (RegExp(".*[!@#&*~\$%_].*").hasMatch(name)) {
      return "Name should contain only alphabets";
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else if (value.length <= 4) {
      return "Incorrect password";
    } else {
      return null;
    }
  }

  static String? validateForm(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is mandatory";
    } else {
      return null;
    }
  }
}
