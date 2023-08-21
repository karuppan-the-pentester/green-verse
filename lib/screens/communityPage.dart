import 'package:flutter/material.dart';
import 'package:greenverse/constants/images_Var.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.green),
    home: CommunityPage(),
  ));
}

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int _selectedCategoryIndex = 0;

  List<String> _categories = ['All', 'Food', 'Travel', 'Fashion', 'Nature'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Community",
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff2bc193),
                height: 22 / 18,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(
                      _categories[index],
                      style: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2bc193),
                        height: 15/11,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    selected: _selectedCategoryIndex == index,
                    selectedColor: Color(0xFFE2F5FF),
                    onSelected: (selected) {
                      setState(() {
                        _selectedCategoryIndex = selected ? index : 0;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of posts
              itemBuilder: (context, index) {
                return PostCard(
                  username: 'abishekarjun',
                  name: 'Abishek',
                  caption:
                      'Planting trees was an incredibly enjoyable and exhilarating experience that I absolutely adored..',
                  imageUrl: 'assets/post.png', // Replace with actual image path
                  coins: index * 10, // Example: Increase coins with index
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle adding a new feed
        },
        backgroundColor: Color(0xff2bc193),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String name;
  final String caption;
  final String imageUrl;
  final int coins;

  const PostCard({
    required this.username,
    required this.name,
    required this.caption,
    required this.imageUrl,
    required this.coins,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(image: AssetImage(Profile_Pic), width: 60),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('@$username'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(caption),
          ),
          const SizedBox(height: 12.0),
          Image.asset(imageUrl),
          const SizedBox(height: 12.0), // Load the image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite_border, color: Color(0xff2bc193)),
                Icon(Icons.share, color: Color(0xff2bc193)),
                Row(
                  children: [
                    Image(image: AssetImage(Gcoin), width: 20), // Coin icon
                    Text(
                      ' $coins',
                      style: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2bc193),
                        height: 17 / 14,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
