import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenverse/screens/SignupPage.dart';
import 'package:greenverse/screens/loginPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Image.asset(
                      "assets/landbg.png",
                      width: screenSize.width,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, bottom: 60, top: 12),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenSize.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(
                                  text: 'Green',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'RedHatText',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: 'Verse ',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'RedHatText',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2BC193),
                                      ),
                                    ),
                                  ])),

                              Text.rich(TextSpan(
                                  text: 'For Greener Earth - Join Green',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'RedHatText',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: 'Verse! ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'RedHatText',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2BC193),
                                      ),
                                    ),
                                  ])), //Greenverse&text
                            ],
                          ),
                        ),
                        SizedBox(
                            width: screenSize.width * 0.9,
                            child: Image.asset("assets/1st.png")),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(500, 50),
                                foregroundColor: Color(0xFF2BC193),
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
                                      builder: (context) => const SignupPage()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Inter'),
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
                                      builder: (context) => const LoginPage()),
                                );
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Inter'),
                              ),
                            )
                          ],
                        ) //buttons
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
