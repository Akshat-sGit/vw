import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Home',
          style: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          'Updated at 8:25AM',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.grey[700],
          ),
        ),
      ],
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications_none_outlined,
          color: Color(0xFF1F2F57),
          size: 30,
        ),
        onPressed: () {},
      ),
    ],
    leading: IconButton(
      icon: const Icon(
        Icons.car_crash_outlined,
        color: Color(0xFF1F2F57),
        size: 30,
      ),
      onPressed: () {},
    ),
  );
}