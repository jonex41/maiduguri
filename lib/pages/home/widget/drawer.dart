import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/color.dart';
import '../../../util/router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          30.height,
          Assets.images.smallName.svg(),
          Assets.images.profileBig.image(width: 100, height: 100),
          Text(
            'John Marcus Doe',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w800, color: kgblue),
          ),
          Text(
            '@AceGarxia',
            style: GoogleFonts.poppins(
                fontSize: 12, fontWeight: FontWeight.w800, color: kShade),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    border: Border.all(
                      color: kPrimaryColor,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: buildRow(
                    Assets.images.feed.image(width: 50, height: 50), 'Feeds')),
          ),
          buildRow2(
              Assets.images.person.image(width: 50, height: 50), 'Profile', () {
            context.go(homeRoute);
          }),
          buildRow2(
              Assets.images.connect.image(width: 50, height: 50), 'Connect',
              () {
            context.go(connectRoute);
          }),
          buildRow2(
              Assets.images.member.image(width: 50, height: 50), 'Members', () {
            context.go(memberRoute);
          }),
          buildRow2(Assets.images.group.image(width: 50, height: 50), 'Groups',
              () {
            context.go(groupRoute);
          }),
          buildRow2(
              Assets.images.mentor.image(width: 50, height: 50), 'Mentors', () {
            context.go(mentorRoute);
          }),
          buildRow2(
              Assets.images.message.image(width: 50, height: 50), 'Messages',
              () {
            context.go(messagesRoute);
          }),
          buildRow2(Assets.images.event.image(width: 50, height: 50), 'Events',
              () {
            context.go(eventRoute);
          }),
          buildRow2(
              Assets.images.chatLead.image(width: 50, height: 50), 'Chat Lead',
              () {
            context.go(chatLeadRoute);
          }),
          buildRowlogout()
        ],
      ),
    );
  }

  Widget buildRow(Widget child, String name) {
    return Row(
      children: [
        child,
        Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ],
    );
  }

  Widget buildRow2(Widget child, String name, VoidCallback onTap) {
    return Row(
      children: [
        20.width,
        child,
        GestureDetector(
          onTap: onTap,
          child: Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w400, color: kShade),
          ),
        ),
      ],
    );
  }

  Widget buildRowlogout() {
    return Row(
      children: [
        10.width,
        Assets.images.logout.image(width: 50, height: 50),
        Text(
          'Logout',
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),
        ),
      ],
    );
  }
}
