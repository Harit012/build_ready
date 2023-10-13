import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController uname = TextEditingController();

  final TextEditingController pwd = TextEditingController();

  bool isVisible = true;

  void logUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: uname.text,
        password: pwd.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        warningMessage('Uase');
      } else if (e.code == 'wrong-password') {
        warningMessage('Password ');
      }
    }
  }

  Future warningMessage(String cause) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Incorrect $cause'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Builder's app",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.network(
                  'https://cdn.logo.com/hotlink-ok/logo-social.png',
                  height: 150,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      top: BorderSide(color: Colors.black, width: 3),
                      bottom: BorderSide(color: Colors.black, width: 3),
                      right: BorderSide(color: Colors.black, width: 3),
                      left: BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: uname,
                        decoration: const InputDecoration(
                          suffix: Icon(Icons.person),
                          label: Text('Username'),
                        ),
                      ),
                      TextField(
                        controller: pwd,
                        obscureText: isVisible,
                        decoration: const InputDecoration(
                          label: Text('password'),
                          suffix: Icon(Icons.lock),
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Forget Password ? '),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Click here'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: logUserIn,
                  child: Container(
                      width: 154,
                      height: 44,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA28B85),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 100,
                ),
                Image.asset('images/Quote.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
