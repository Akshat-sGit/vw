import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget infoTile({required String title, required String subtitle, required IconData icon, required double ht}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: const Color(0xFF1F2F57),
        width: 1,
      ),
    ),
    height: ht * 0.08,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: const Color(0xFF1F2F57),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1F2F57),
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: const Color(0xFF1F2F57),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}