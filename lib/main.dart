import 'package:contacts_app/screens/home_screen.dart';
import 'package:contacts_app/screens/launch_screen.dart';
import 'package:contacts_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
void main()=> runApp(MainApp());
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/login_screen' : (context) => LoginScreen(),
        '/home_screen' : (context) => HomeScreen(),


      },
    );
  }
}
