import 'package:flutter/material.dart';
import 'package:greenverse/constants/images_Var.dart';
import 'package:greenverse/screens/communityPage.dart';
import 'package:greenverse/screens/dashboardPage.dart';
import 'package:greenverse/screens/gmartPage.dart';
import 'package:greenverse/screens/libraryPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Color(0xFF2BC193)),
    home: Profile_Page(),
  ));
}

// class Profile_Page extends StatefulWidget {
//   @override
//   _Profile_PageState createState() => _Profile_PageState();
// }

// class _Profile_PageState extends State<Profile_Page> {
//   int _currentIndex = 4;
//
//   final List<Widget> _pages = [
//     const DashboardPage(),
//     const GmartPage(),
//     const CommunityPage(),
//     const LibraryPage() ,
//     GVProfilePage()
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         selectedItemColor: Color(0xFF2BC193),
//         unselectedItemColor: Colors.black,
//         type: BottomNavigationBarType.fixed,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Dashboard',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Market',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.groups_rounded),
//             label: 'Community',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.library_books_sharp),
//             label: 'Resource',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

class Profile_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
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
            IconButton(
              onPressed: () {
                // Handle settings icon press
              },
              icon: const Icon(
                Icons.settings,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Profile_Pic)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileStatWidget(
                          count: '10',
                          label: 'Followers',

                        ),
                        ProfileStatWidget(count: '20', label: 'Following'),
                        ProfileStatWidget(count: '50', label: 'GCoins'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Jegannath E',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Description",
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2bc193),
                  height: 17/14,
                ),
                textAlign: TextAlign.left,
              )
            ),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'I’m an eco enthusiast 💚 \nPlanted more that 150 plants🎄',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2BC193),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Image.asset(
                      'assets/Gallery/1.png',
                      height: 300.0,
                      fit: BoxFit.cover,
                    );
                  } else if (index == 2 || index == 5) {
                    return Image.asset(
                      'assets/Gallery/2.png',
                      height: 150.0,
                      fit: BoxFit.cover,
                    );
                  } else if (index == 6 || index == 7) {
                    return Image.asset(
                      'assets/Gallery/3.png',
                      width: 150.0,
                      fit: BoxFit.cover,
                    );
                  } else {
                    return Image.asset(
                      'assets/Gallery/4.png',
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Align(
                alignment: Alignment.bottomRight,

                child: FloatingActionButton(

                  onPressed: () {
                    // Handle creating a new post
                  },
                  backgroundColor: Color(0xFF2BC193),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final Color color;

  const PlaceholderPage({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: color,
          child: const Text(
            'Placeholder Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ProfileStatWidget extends StatelessWidget {
  final String count;
  final String label;

  const ProfileStatWidget({
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
