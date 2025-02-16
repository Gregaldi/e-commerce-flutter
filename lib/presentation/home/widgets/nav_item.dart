import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: 24.0,
              height: 24.0,
              child: FlutterLogo(
                size: 100, // Sesuaikan ukuran
                style: FlutterLogoStyle.markOnly, // Gaya logo
              )),
          const SpaceHeight(4.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: isActive ? AppColors.white : AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
