import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF2BC193),
                        minimumSize: Size(screenSize.width/2.25, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          width: 2,
                          color: Color(0xFF2BC193),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const LoginPage()),
                        // );
                      },
                      child: Text(
                        'Articles',
                        style: TextStyle(
                            fontSize: 18, fontFamily: 'Inter'),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(screenSize.width/2.25, 50),
                        foregroundColor: Color(0xFF2BC193),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          width: 2,
                          color: Color(0xFF2BC193),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const SignupPage()),
                        // );
                      },
                      child: Text(
                        'Videos',
                        style: TextStyle(
                            fontSize: 18, fontFamily: 'Inter'),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 20,),
              Text("Explore latest articles on Climate Action",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
                color: Color(0xFF2BC193),
              ),),
              SizedBox(height: 20,),
              ArticleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(

      // width: screenSize.width/1.1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/art1.png',
          width: screenSize.width/2.5,
            ),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 192,
                  child: Text('Global warming impacts in 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                ),
                // SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF2BC193),
                    minimumSize: Size(screenSize.width/5, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFF2BC193),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const LoginPage()),
                    // );
                  },
                  child: Text(
                    'Read',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'Inter'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
