import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'screen/home_screen.dart';
import 'screen/introduction_screen.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ??
      true; // จุดที่ ON_BOARDING อยู่คือ valuable ที่จะใช้ทีหลัง
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'onboarding_screen',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 202, 204, 221)),
      home: show ? IntroScreen() :  HomeScreen(),
    );
  }
}
