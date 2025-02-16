import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/data/datasource/auth_remote_datasource.dart';
import 'package:ecommerce/data/datasource/cart_local_datasource.dart';
import 'package:ecommerce/data/datasource/event_category_remote_datasource.dart';
import 'package:ecommerce/data/datasource/event_remote_datasource.dart';
import 'package:ecommerce/presentation/auth/bloc/register/register_bloc.dart';
import 'package:ecommerce/presentation/auth/pages/splash_page.dart';
import 'package:ecommerce/presentation/cart/bloc/cart_bloc.dart';
import 'package:ecommerce/presentation/expoler/product/product_bloc.dart';
import 'package:ecommerce/presentation/expoler/categori/categori_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'presentation/auth/bloc/login/login_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
      statusBarBrightness: Brightness.dark,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(
            AuthRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(
            AuthRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => CategoriBloc(
            EventCategoryRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => ProductBloc(
            EventRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => CartBloc(
            CartLocalDatasource(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter E-commerce',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.primary,
            ),
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
