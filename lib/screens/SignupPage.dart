import 'package:flutter/material.dart';
import 'package:greenverse/screens/homePage.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Stack(children: [
            Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/landbg.png",
                  width: screenSize.width,
                )),
            Padding(
              padding:
              const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width,
                    child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                  ),
                  Image.asset(
                    "assets/Loginanim.gif",
                    width: screenSize.width * 0.9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: 'Enter email',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 3, color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: 'Create Password',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF2BC193),
                          minimumSize: Size(500, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          side: BorderSide(
                            width: 2,
                            color: Color(0xFF2BC193),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 18, fontFamily: 'Inter'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
