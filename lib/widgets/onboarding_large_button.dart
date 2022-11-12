import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingLargeButton extends StatelessWidget {
  const OnboardingLargeButton(
      {Key? key,
      required this.buttonText,
      this.onPressed,
      required this.buttonColor})
      : super(key: key);
  final String buttonText;
  final Color buttonColor;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 92,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
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
