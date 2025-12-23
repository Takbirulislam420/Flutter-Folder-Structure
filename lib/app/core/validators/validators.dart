class Validators {
  /// =========================
  /// PASSWORD VALIDATOR
  /// =========================
  static String? password({
    required String? value,
    required String emptyError,
    int minLength = 6,
    int? maxLength,
    String? matchValue,
    String? matchError,
  }) {
    if (value == null || value.isEmpty) {
      return emptyError;
    }

    if (value.length < minLength) {
      return "Password must be at least $minLength characters";
    }

    if (maxLength != null && value.length > maxLength) {
      return "Password cannot be more than $maxLength characters";
    }

    if (matchValue != null && value != matchValue) {
      return matchError ?? "Passwords do not match";
    }

    return null;
  }

  //   🔐 Login Password
  //   TextFormField(
  //   obscureText: true,
  //   validator: (value) => Validators.password(
  //     value: value,
  //     emptyError: "Please enter your password",
  //   ),
  // )

  // Use it for New Password
  // validator: (value) {
  //   return Validators.password(
  //     value: value,
  //     emptyError: AppStrings.newPasswordError,
  //   );
  // },

  // Use it for Retype Password
  // validator: (value) {
  //   return Validators.password(
  //     value: value,
  //     emptyError: AppStrings.retypePasswordError,
  //     matchValue: _newPasswordController.text,
  //     matchError: "Passwords do not match",
  //   );
  // },

  /// =========================
  /// EMAIL VALIDATOR
  /// =========================
  static String? email({
    required String? value,
    required String emptyError,
    String invalidError = "Enter a valid email",
    RegExp? pattern,
  }) {
    if (value == null || value.isEmpty) {
      return emptyError;
    }

    final emailRegex = pattern ?? RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return invalidError;
    }

    return null;
  }

  //   validator: (value) => Validators.email(
  //   value: value,
  //   emptyError: "Please enter your email",
  //   invalidError: "Enter a valid email",
  // ),
}
