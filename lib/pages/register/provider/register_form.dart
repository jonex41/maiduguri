import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class SignupFormBloc extends FormBloc<String, String> {
  //String invalidMail = 'da';
  final fName = TextFieldBloc(validators: [FieldBlocValidators.required]);
  final lName = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );
  final email = TextFieldBloc(
    validators: [FieldBlocValidators.required, _validateEmail],
  );

  final agreeToConditions = BooleanFieldBloc(
    validators: [FieldBlocValidators.required],
  );
  final numberCode = BooleanFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  //final UserRepository _userRepository;

  final password = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars
  ]);
  final confirmPassword = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  Validator<String> _confirmPassword(
    TextFieldBloc passwordTextFieldBloc,
  ) {
    return (String confirmPassword) {
      if (confirmPassword == passwordTextFieldBloc.value) {
        return null;
      }
      return 'password does not match';
    };
  }

  static String? _validateEmail(String? email) {
    bool isValidEmail = email!.trim().validateEmail();
    if (!isValidEmail) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  SignupFormBloc() {
    addFieldBlocs(
      fieldBlocs: [fName, lName, email, numberCode, password, confirmPassword],
    );

    confirmPassword
      ..addValidators([_confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
    // Obtain shared preferences.

    // username.addAsyncValidators([_checkUsername]);
  }

/*   static String? _validateEmail(String? email) {
    bool isValidEmail = email!.trim().validateEmail();
    if (!isValidEmail) {
      return 'Please enter a valid email address';
    }
    return null;
  }
 */

  @override
  void onSubmitting() async {
    try {
      /*  setValue(kIsLoggedIn, true);
          setValue(kFullName, res.data.name);
          setValue(kUid, res.data.id);
          setValue(kEmail, res.data.email); */
      // final SharedPreferences prefs = await SharedPreferences.getInstance();

      // setValue(kIsLoggedIn, true);
      emitSuccess();
    } catch (e) {
      emitFailure(failureResponse: '$e');
    }
  }
}
