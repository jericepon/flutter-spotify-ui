import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingLargeButton extends StatelessWidget {
  const OnboardingLargeButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 92,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
