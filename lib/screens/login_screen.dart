import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 30,
            end: 30,
            top: 60,
          bottom: 30,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage('images/flower.png'),
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 30,),
            Text('LogIn' ,style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 5,),
            Text('Enter Your Email And Password' ,style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600

            ),),
            SizedBox(height: 20,),
            TextField(
              controller: _email,
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 5,
                    color: Colors.grey
                  )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        width: 5,
                        color: Colors.blue
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 5,
                    color: Colors.grey
                  ),

                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        width: 5,
                        color: Colors.blue
                    ),

                  ),
              ),

            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: FlatButton(
                onPressed: (){},
                textColor: Colors.grey.shade800,
                child: Text(
                  'forgot password ? '
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(onPressed: (){
                login();
              }, child: Text(
                'Log In ',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
                color: Colors.teal,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Spacer(),
            Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Text('Flutter Training ',)),

          ],
        ),
      ),
    );
  }

  void login() {

    if(_email.text.isNotEmpty&& _password.text.isNotEmpty){
      Navigator.pushReplacementNamed(context, '/home_screen');
    }
  }
}
