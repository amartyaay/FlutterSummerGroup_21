import 'package:flutter/material.dart';
import 'register.dart';
import 'greetings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'CRuX FLUTTER SUMMER GROUP',
                    style: TextStyle(
                      color: Color(0xff2FC4B2),
                      fontSize: 24,
                    ),
                  ),
                ),
                // SizedBox(height: 40),
                Text('ID Number'),
                TextField(
                  controller: myController,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Colors.black12,
                    focusColor: Colors.green,
                    hintText: 'Enter BITS ID',
                  ),
                ),
                Text('Password'),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Colors.black12,
                    focusColor: Colors.white,
                    hintText: 'Enter Password',
                  ),
                ),
                GestureDetector(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Login',
                        // style: kLargeButtonText,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff2FC4B2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    // width: double.infinity,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Greetings(id: myController.text),
                      ),
                    );
                  },
                ),
                Center(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff2FC4B2),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account'),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xff2FC4B2),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
