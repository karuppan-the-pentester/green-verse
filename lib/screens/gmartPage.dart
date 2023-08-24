import 'package:flutter/material.dart';

class GmartPage extends StatefulWidget {
  const GmartPage({super.key});

  @override
  State<GmartPage> createState() => _GmartPageState();
}

class _GmartPageState extends State<GmartPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text('Gmart',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2BC193),
                  )),
              SizedBox(height: 10),
              SizedBox(
                width: screenSize.width,
                height: 56,
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                    hintText: 'Search Products',
                    suffixIcon: SearchIcon(),
                    enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide:
                        BorderSide(color: Color(0xFF2BC193), width: 2.5)),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide:
                      BorderSide(color: Color(0xFF2BC193), width: 2.5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1.5 / 2.3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount:10,
                    itemBuilder: (BuildContext ctx, index) {
                      return ProductCard();
                    }),
              ),
              // ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 15, top: 5, bottom: 5),
      child: Container(
        width: 50,
        height: 35,
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
        decoration: ShapeDecoration(
          color: Color(0xFF2BC193),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 220,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/products/prod1.png', // Replace with actual image URL
              width: 170,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  'Bamboo Basket - 1 set',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    fontSize: screenSize.width/25,
                  ),
                ),
                Row
                  (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\₹500',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    // SizedBox(width: 30),
                    Row(

                      children: [
                        Image.asset(
                          "assets/Gcoin.png",
                          width: screenSize.width/13,
                          height: screenSize.width/13,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '100 ',
                          style: TextStyle(fontSize: screenSize.width/20, fontFamily: 'Inter', fontWeight: FontWeight.bold),
                        ),
                      ],
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