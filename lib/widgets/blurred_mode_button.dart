import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlurredModeButton extends StatelessWidget {
  const BlurredModeButton({
    Key? key,
    required this.svg,
  }) : super(key: key);
  final String svg;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36.5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 87, sigmaY: 87),
        child: Container(
          width: 73,
          height: 73,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset(
              svg,
            ),
          ),
        ),
      ),
    );
  }
}
