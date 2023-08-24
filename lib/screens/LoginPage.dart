import 'package:flutter/material.dart';
import 'package:greenverse/screens/homePage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Stack(

              children: [
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
                        child: Text('Login',
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
                            focusNode: FocusNode(),
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
                              labelText: 'Password',
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
                              'Log in',
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
