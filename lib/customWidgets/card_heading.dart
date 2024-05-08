import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHeading extends StatelessWidget {
  const CardHeading({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
