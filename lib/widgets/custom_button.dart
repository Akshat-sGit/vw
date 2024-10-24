import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customButton(double ht, Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SizedBox(
      width: double.infinity,
      height: ht * 0.08,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 28, 70, 222),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              'Remote Start',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}