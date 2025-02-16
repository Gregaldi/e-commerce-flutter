import 'package:ecommerce/core/constants/colors.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color color;

  const LoadingIndicator({this.color = AppColors.primary, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
