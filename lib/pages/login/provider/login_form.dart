import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginFormBloc extends FormBloc<String, String> {
  final username = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,

      //  FieldBlocValidators.email,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        username,
        password,
      ],
    );
    // return super(null);
  }

  @override
  void onSubmitting() async {
    emitSuccess();
    /*  if (getStringAsync(kEmail) != username.value.toString().trim()) {
      emitFailure(failureResponse: 'invalid email');
      return;
    }
    if (getStringAsync(kPassword) != password.value.toString().trim()) {
      emitFailure(failureResponse: 'Please check your password');
      return;
    }
    await Future.delayed(const Duration(seconds: 2), () {
      setValue(kIsLoggedIn, true);
      emitSuccess();
    });
 */

    //  emitFailure(failureResponse: 'This is an awesome error!');
  }
}
