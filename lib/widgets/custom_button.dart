import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final bool isButtonPressed;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.height,
    required this.isButtonPressed,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: double.infinity,
          height: height * 0.08,
          decoration: BoxDecoration(
            color: isButtonPressed ? Colors.green : const Color.fromARGB(255, 8, 61, 104),
            borderRadius: BorderRadius.circular(10),
            boxShadow:isButtonPressed ? []
             : [
              BoxShadow(
                color: Colors.grey[500]!,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(6, 6),
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(-6, -6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.power_settings_new,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  isButtonPressed ? "Started" : 'Remote Start',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}