import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/screens/choose_mode_screen.dart';
import 'package:flutter_spotify_ui/widgets/app_back_button.dart';
import 'package:flutter_spotify_ui/widgets/app_button.dart';
import 'package:flutter_spotify_ui/widgets/screen_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSignInScreen extends StatelessWidget {
  const RegisterSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/register_sign_in_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const ScreenAppBar(
              leadingWidget: AppBackButton(),
              // centerWidget: Image.asset(
              //   'assets/images/splash-logo@4x.png',
              //   fit: BoxFit.cover,
              //   width: 108,
              // ),
              // actionsWidget: [
              //   Container(
              //     padding: const EdgeInsets.only(right: 16),
              //     child: IconButton(
              //       splashRadius: 16,
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.more_vert,
              //         color: Color.fromRGBO(125, 125, 125, 1),
              //       ),
              //     ),
              //   ),
              // ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Image.asset('assets/images/splash-logo@4x.png', width: 235),
                  const SizedBox(height: 55),
                  Text(
                    'Enjoy listening to music',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(56, 56, 56, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: 306,
                    child: Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(121, 121, 121, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 147,
                        child: AppButton(
                          height: 73,
                          width: double.infinity,
                          buttonText: 'Register',
                          buttonColor: kPrimaryColor,
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ChooseModeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      TextButton(
                        onPressed: () => {},
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          minimumSize: const Size(100, 73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.5),
                          ),
                        ),
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(49, 49, 49, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ],
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
