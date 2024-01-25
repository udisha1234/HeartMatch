import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:heartmatch/components/extra.dart';
import 'package:heartmatch/components/extra_two.dart';
import 'package:heartmatch/pages/Home.dart';
import 'package:heartmatch/pages/pagecontrol.dart';
import 'package:heartmatch/utils/colors.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.def,
          // titleTextStyle: TextField.materialMisspelledTextStyle 
          surfaceTintColor: AppColors.bg,

          )),
      debugShowCheckedModeBanner: false,

      home: PageControl()
      //  Home(zodi_1: '', zodi_2: ''),
    );
  }
}

