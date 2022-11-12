import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      this.size,
      required this.height,
      required this.width,
      required this.buttonText,
      this.onPressed,
      required this.buttonColor})
      : super(key: key);
  final String? size;
  final double height;
  final double width;
  final String buttonText;
  final Color buttonColor;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
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
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: size == 'large' ? FontWeight.w700 : FontWeight.w500,
              fontSize: size == 'large' ? 23 : 19,
            ),
          ),
        ),
      ),
    );
  }
}
