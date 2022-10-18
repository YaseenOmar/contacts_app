import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/login_screen');

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(

                colors: [
                  Colors.grey.shade800,
                  Colors.grey.shade200,

                ]
              )
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 60,
                  // backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('images/flower.png'),
                  backgroundColor: Colors.grey.shade300,

                ),
                Text(
                  'Contatcts APP ',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text(
                  'Make Calls Easily',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ],
            ),
          ),
          PositionedDirectional(
            start: 0,
            end: 0,
            bottom: 25,

            child: Text(
              'Flutter Training',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade200,
                fontWeight: FontWeight.bold,

             ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
