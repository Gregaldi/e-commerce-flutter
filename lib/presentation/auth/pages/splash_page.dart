import 'dart:developer';

import 'package:ecommerce/core/assets/assets.gen.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/extensions/build_context_ext.dart';
import 'package:ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:ecommerce/presentation/auth/pages/login_page.dart';
import 'package:ecommerce/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    bool isAuthenticated = await AuthLocalDatasource().isAuthDataExists();

    log("isAuthenticated: $isAuthenticated");
    await Future.delayed(const Duration(seconds: 3));
    if (isAuthenticated) {
      final model = await AuthLocalDatasource().getAuthData();
      context.pushReplacement(const HomePage());
    } else {
      context.push(const LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: const FlutterLogo(
          size: 100, // Sesuaikan ukuran
          style: FlutterLogoStyle.markOnly, // Gaya logo
        ),
      ),
    );
  }
}
