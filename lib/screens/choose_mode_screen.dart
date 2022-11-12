import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/constants/spaces.dart';
import 'package:flutter_spotify_ui/screens/register_sign_in_screen.dart';
import 'package:flutter_spotify_ui/widgets/blurred_mode_button.dart';
import 'package:flutter_spotify_ui/widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/choose_mode_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/splash-logo@4x.png',
                  width: 200,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 26),
                    child: Text(
                      'Choose mode',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      BlurredModeButton(
                        svg: 'assets/svg/moon.svg',
                      ),
                      SizedBox(
                        width: 71,
                      ),
                      BlurredModeButton(
                        svg: 'assets/svg/sun.svg',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 71,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: kHorizontalSpace,
                        bottom: 69,
                        left: kHorizontalSpace,
                      ),
                      child: AppButton(
                        size: 'large',
                        height: 92,
                        width: double.infinity,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegisterSignInScreen(),
                            ),
                          );
                        },
                        buttonColor: kPrimaryColor,
                        buttonText: 'Continue',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
