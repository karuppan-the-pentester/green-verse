import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jegan_",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          height: 22 / 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.settings,
                        size: 35.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 30.0), // Added space between header and sections
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 100, // Added height to the sections
                          color: Colors.greenAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 100, // Added height to the sections
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 100, // Added height to the sections
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 100, // Added height to the sections
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_Page(),
  ));
}
