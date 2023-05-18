import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/app_button.dart';
import '../../../util/color.dart';
import '../../../util/input_decoration.dart';
import '../../../util/router.dart';
import '../provider/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormBloc(),
      child: Builder(builder: (context) {
        final loginFormBloc = context.read<LoginFormBloc>();
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: FormBlocListener<LoginFormBloc, String, String>(
                  onSubmitting: (context, state) async {},
                  onSuccess: (context, state) {
                    context.go(homeRoute);
                  },
                  onFailure: (context, state) {
                    //   print('failure ${state.failureResponse!}');
                    //   LoadingDialog.hide(context);
                    // hideLoader();
                    snackBar(context,
                        title: state.failureResponse!,
                        backgroundColor: Colors.red);
                  },
                  child: AutofillGroup(
                    child: Column(
                      children: [
                        Assets.images.logoName.svg(
                            width: context.width(),
                            height: context.height() / 4),
                        ListView(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          children: [
                            40.height,
                            Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 32,
                                  color: appBlack,
                                  fontWeight: FontWeight.w700),
                            ),
                            32.height,
                            TextFieldBlocBuilder(
                              textFieldBloc: loginFormBloc.username,
                              decoration: inputDecoration(
                                  labelText: 'Username',
                                  prefixIcon: const Icon(PhosphorIcons.user)),
                            ),

                            TextFieldBlocBuilder(
                              textFieldBloc: loginFormBloc.password,
                              suffixButton: SuffixButton.obscureText,
                              obscureTextFalseIcon:
                                  const Icon(PhosphorIcons.eye),
                              obscureTextTrueIcon:
                                  const Icon(PhosphorIcons.eyeSlash),
                              decoration: inputDecoration(
                                labelText: 'Password',
                                prefixIcon: const Icon(PhosphorIcons.lock),
                                //     suffixIcon: Icon(PhosphorIcons.eyeSlash),
                              ),
                            ),
                            12.height,
                            /*Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  child: Text('Forgot Password?'),
                                  onPressed: () => null,
                                )
                              ],
                            ), */

                            /*  GestureDetector(
                          onTap: () {
                            context.go(changePassRoute);
                          },
                          child: const Align(
                            alignment: Alignment.bottomRight,
                            child: Text('Change password',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        
 */
                            20.height,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Not a member?',
                                    style: TextStyle(fontSize: 16.0)),
                                GestureDetector(
                                  onTap: () {
                                    context.push(registerRoute);
                                    // context.replaceRoute(SignupRoute());
                                  },
                                  child: const Text(
                                    'Join GDG Maiduguri',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),

                            50.height,
                            BlocBuilder<LoginFormBloc, FormBlocState>(
                              bloc: loginFormBloc,
                              builder: (context, FormBlocState state) {
                                return AppButton(
                                  title: 'Login to platform',
                                  onPressed: loginFormBloc.submit,
                                  isDisabled: state.isValid(0) ? false : true,
                                );
                              },
                            ),
                            24.height,
                            /*   Text(
                                  'OR LOGIN WITH',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12.0, color: ColorName.black40),
                                ), */
                            //  72.height,
                          ],
                        ),
                        const Spacer(),
                        Positioned(
                          bottom: 0,
                          child: Assets.images.maiduguri
                              .svg(width: context.width(), height: 60),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        );
      }),
    );
  }
}
