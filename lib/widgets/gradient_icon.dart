import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';

class GradientIcon extends StatelessWidget {

  IconData icon;
  double size;

  GradientIcon({super.key,required this.icon,required this.size});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => RadialGradient(
        center: Alignment.topCenter,
        stops: [.5, 1.5],
        colors: [
          AppConstants.clrGradient1,
          AppConstants.clrGradient2,
        ],
      ).createShader(bounds),
      child: Icon(
        icon,
        size: size,
      ),
    );
  }
}
