import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../appbar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../home/widget/drawer.dart';

class MentorPage extends StatelessWidget {
  const MentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        drawer: const HomeDrawer(),
        body: Column(
          children: [
            30.height,
            buildRow2(
                Assets.images.mentor
                    .image(width: 50, height: 50, color: Colors.black),
                'Mentor',
                18),
            30.height,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.noData.image(
                    width: context.width() - 20,
                    height: 150,
                  ),
                  10.height,
                  const Text(
                    'We are still building features \n\n coming soon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ));
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
}
