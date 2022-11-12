import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.04),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: SvgPicture.asset(
          'assets/svg/back.svg',
          color: const Color.fromRGBO(65, 65, 65, 1),
        ),
        splashRadius: 17,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
