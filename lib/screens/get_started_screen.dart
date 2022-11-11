import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/spaces.dart';
import 'package:flutter_spotify_ui/widgets/onboarding_large_button.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/get_started_bg.png'),
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
                      'Enjoy listening to music',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 49),
                    child: SizedBox(
                      width: 297,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(121, 121, 121, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: kHorizontalSpace,
                      bottom: 69,
                      left: kHorizontalSpace,
                    ),
                    child: OnboardingLargeButton(
                      buttonText: 'Get Started',
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
