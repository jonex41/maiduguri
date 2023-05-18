import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'gen/assets.gen.dart';



  AppBar myAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: Text(
        'Community Platform ',
        style: GoogleFonts.poppins(
            fontSize: 12, fontWeight: FontWeight.w800, color: Colors.black),
      ),
      actions: [
        const Icon(Icons.notifications_none_outlined),
        20.width,
        //
        Assets.images.profile.image(width: 50, height: 50),
        20.width,
      ],
    );
  }

