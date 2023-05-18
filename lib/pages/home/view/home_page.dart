import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meduguri/pages/home/widget/drawer.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../appbar.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/color.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameText = useTextEditingController();
    final phoneText = useTextEditingController();
    final emailText = useTextEditingController();
    return SafeArea(
      child: Scaffold(
        drawer: const HomeDrawer(),
        appBar: myAppBar(),
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                buildRow2(
                    Assets.images.person
                        .image(width: 50, height: 50, color: Colors.black),
                    'Profile',
                    18),
                Assets.images.home.image(
                  width: context.width() - 20,
                  height: 150,
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        80.height,
                        Row(
                          children: [
                            15.width,
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: kLighterGreen,
                                  border: Border.all(
                                    color: kLighterGreen,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Row(
                                children: [
                                  5.width,
                                  Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        color: kLightGreen,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container()),
                                  10.width,
                                  Text(
                                    'Available for hire',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w800,
                                        color: kPurple),
                                  ),
                                  10.width,
                                ],
                              ),
                            ),
                            buildRow(
                                Assets.images.location
                                    .svg(width: 20, height: 20, color: kPurple),
                                'Maiduguri',
                                14),
                            buildRow(
                                Assets.images.badge
                                    .svg(width: 20, height: 20, color: kPurple),
                                'Junior Dev.',
                                14),
                          ],
                        ),
                        buildInput(
                            'Full name', 'Enter your full name', nameText),
                        buildInput('Email', 'Enter your email', emailText),
                        buildInput('Phone number', 'Enter your Phone number',
                            phoneText),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
                top: 150.0,
                left: 30, // (background container size) - (circle height / 2)
                child: Assets.images.profileBig.image(width: 100, height: 100)),
            Positioned(
                top: 190.0,
                left: 125, // (background container size) - (circle height / 2)
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Marcus Doe',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: kgblue),
                    ),
                    Text(
                      '@AceGarxia',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kShade),
                    ),
                  ],
                )),
          ],
        ),

        /* Column(
          children: [
           
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
              
                Positioned(
                    top: 100.0,
                    child: Assets.images.profileBig
                        .image(width: 100, height: 100)),
                /*  Positioned(
                    top:
                        100.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    )) */
              ],
            ),
          ],
        ),
       */
      ),
    );
  }

  Widget buildRow2(Widget child, String name, double fontsize) {
    return Row(
      children: [
        20.width,
        child,
        Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: fontsize,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ],
    );
  }

  Widget buildRow(Widget child, String name, double fontsize) {
    return Row(
      children: [
        10.width,
        child,
        10.width,
        Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: 10, fontWeight: FontWeight.w600, color: kPurple),
        ),
        10.width,
      ],
    );
  }

  Widget buildInput(
      String name, String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              name,
              style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          10.height,
          TextFormField(
            keyboardType: TextInputType.name,
            controller: controller,
            //controller: _firstName,
            //textInputAction: TextInputType.emailAddress,
            cursorWidth: 0.5,

            validator: (value) {
              if (value!.isEmpty) {
                return 'Name field cannot be empty';
              }
              return null;
            },

            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              fillColor: Colors.grey,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.5),
                borderRadius: BorderRadius.circular(1),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(1),
              ),
              /*  prefixIcon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ), */
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xff4E4E4E)),
              hintText: hint,
              
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            ),
          ),
        ],
      ),
    );
  }
}
