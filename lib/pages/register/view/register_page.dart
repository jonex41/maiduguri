import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/app_button.dart';
import '../../../util/color.dart';
import '../../../util/constant.dart';
import '../../../util/input_decoration.dart';
import '../../../util/router.dart';
import '../provider/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupFormBloc(),
      child: Builder(builder: (context) {
        final signupFormBloc = context.read<SignupFormBloc>();

        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: FormBlocListener<SignupFormBloc, String, String>(
                onSubmitting: (context, state) {
                  //   showLoader(context);
                },
                onSuccess: (context, state) {
                  context.go(homeRoute);
                  /*   hideLoader();
                  context.pushReplacement(homeRoute);
                  ref.refresh(listUserProvider); */
                  /*  snackBar(context,
                  title: 'Account Created Successful',
                  backgroundColor: Colors.green);
              ref.refresh(feedNotifierProvider);
              ref.refresh(avatarProvider);
              //  context.navigateTo(DashboardRoute(children: [ExploreRouter()]));
              // ref.refresh(feedNotifierProvider);
              context.replaceRoute(DashboardRoute()); */
                },
                onFailure: (context, state) {
                  //   print('failure ${state.failureResponse!}');
                  //   LoadingDialog.hide(context);
                  //  hideLoader();
                  snackBar(context,
                      title: state.failureResponse!,
                      backgroundColor: Colors.red);
                },
                child: AutofillGroup(
                  child: Column(
                    children: [
                      Assets.images.logoName2
                          .svg(
                            width: context.width(),
                          )
                          .center(),
                      ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          /*  Assets.logo.logoDark
                          .image(
                            width: 120,
                          )
                          .center(), */
                          Text(
                            'Register',
                            style: GoogleFonts.poppins(
                                fontSize: 32,
                                color: appBlack,
                                fontWeight: FontWeight.w700),
                          ),
                          32.height,
                          TextFieldBlocBuilder(
                            textFieldBloc: signupFormBloc.fName,
                            decoration: inputDecoration(
                                labelText: 'First Name',
                                prefixIcon: const Icon(PhosphorIcons.user)),
                          ),
                          TextFieldBlocBuilder(
                            textFieldBloc: signupFormBloc.lName,
                            decoration: inputDecoration(
                                labelText: 'Last Name',
                                prefixIcon: const Icon(PhosphorIcons.user)),
                          ),
                          TextFieldBlocBuilder(
                            textFieldBloc: signupFormBloc.email,
                            decoration: inputDecoration(
                                labelText: 'Email',
                                prefixIcon: const Icon(Icons.email_outlined)),
                          ),
                          IntlPhoneField(
                            decoration: inputDecoration(
                              labelText: 'Phone Number',
                            ),
                            showDropdownIcon: false,
                            showCountryFlag: false,
                            initialCountryCode: 'NG',
                            onTap: () {},
                            onChanged: (phone) {
                              print(phone.completeNumber);
                              if (phone.completeNumber
                                      .toString()
                                      .isEmptyOrNull ||
                                  phone.completeNumber.length < 3) {
                                signupFormBloc.numberCode.updateValue(false);
                              } else {
                                signupFormBloc.numberCode.updateValue(true);
                              }
                              setValue(kPhoneNumber,
                                  phone.completeNumber.toString());
                            },
                          ),
                          TextFieldBlocBuilder(
                            textFieldBloc: signupFormBloc.password,
                            suffixButton: SuffixButton.obscureText,
                            obscureTextFalseIcon: const Icon(PhosphorIcons.eye),
                            obscureTextTrueIcon:
                                const Icon(PhosphorIcons.eyeSlash),
                            decoration: inputDecoration(
                              labelText: 'Confirm Password',
                              prefixIcon: const Icon(PhosphorIcons.lock),
                            ),
                          ),
                          TextFieldBlocBuilder(
                            textFieldBloc: signupFormBloc.confirmPassword,
                            suffixButton: SuffixButton.obscureText,
                            obscureTextFalseIcon: const Icon(PhosphorIcons.eye),
                            obscureTextTrueIcon:
                                const Icon(PhosphorIcons.eyeSlash),
                            decoration: inputDecoration(
                              labelText: 'Confirm Password',
                              prefixIcon: const Icon(PhosphorIcons.lock),
                            ),
                          ),
                          20.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('I am a member',
                                  style: TextStyle(fontSize: 16.0)),
                              GestureDetector(
                                onTap: () {
                                  //  context.go(loginRoute);
                                  // context.replaceRoute(SignupRoute());
                                },
                                child: const Text(
                                  ' Login',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          20.height,

                          /*  CheckboxFieldBlocBuilder(
                        //   checkColor:
                        //     MaterialStateProperty.all(ColorName.primaryColor),
                        booleanFieldBloc: signupFormBloc.agreeToConditions,
                        body: RichText(
                          overflow: TextOverflow.ellipsis,

                          // maxLines: 1,
                          text: TextSpan(
                            text: 'I agree to the ',
                            style: const TextStyle(
                                color: appBlack, height: 1.5, fontSize: 14.0),
                            children: [
                              TextSpan(
                                  text: 'Terms And Conditions',
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      /*  try {
                                        _launchUrl(context,
                                            "https://vigoplace.com/terms-and-conditions");
                                        /*      await launch('https://flutter.dev',
                                            forceWebView: true,
                                            //   forceSafariVC: true,
                                            enableJavaScript: true); */
                                      } catch (e) {
                                        log('invalid url');
                                      } */
                                    }),
                              const TextSpan(
                                text: ' and \n',
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    /* try {
                                      _launchUrl(context,
                                          "https://vigoplace.com/privacy-policy");
                                    } catch (e) {
                                      log('invalid url');
                                    } */
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                      20.height, */
                          BlocBuilder<SignupFormBloc, FormBlocState>(
                            builder: (context, FormBlocState state) {
                              return BlocBuilder<BooleanFieldBloc, dynamic>(
                                  bloc: signupFormBloc.agreeToConditions,
                                  builder: (context, s) {
                                    return AppButton(
                                      title: 'JOIN GDG MAINDUGURI',
                                      onPressed: signupFormBloc.submit,
                                      isDisabled:
                                          state.isValid(0) ? false : true,
                                      /*  isDisabled:
                                    signupFormBloc.agreeToConditions.value == true
                                        ? false
                                        : true, */
                                    );
                                  });
                            },
                          ),
                          24.height,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
      }),
    );
  }

  // void _launchUrl(BuildContext context, String url) async {
  //   // final Uri _url = Uri.parse(url);
  //   if (!await urlLauncher.launch(url)) {
  //     snackBar(context,
  //         title: 'Unable to lunch Url', backgroundColor: Colors.red);
  //   }
  // }
}
