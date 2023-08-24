import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  ValueNotifier<double> counter = ValueNotifier<double>(80.0);
  @override
  void initState() {
    super.initState();
    counter = ValueNotifier(0.0);
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0),
                  child: Card(
                    elevation: 1,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: screenSize.width/0.8,
                      height: 200,
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/dashcardbg.png",),
                                  fit: BoxFit.cover
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Global Carbon Emission",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF7B8AA9),
                                            )),
                                        Row(
                                          children: [
                                            Image.asset("assets/arrow.png",
                                              height: 24,),
                                            const SizedBox(width: 10),
                                            const Text.rich(TextSpan(
                                                text: '500',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                                children: <InlineSpan>[
                                                  TextSpan(
                                                    text: 'PPM',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xFF2BC193),
                                                    ),
                                                  ),
                                                ])),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Global Temperature",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color:  Color(0xFF7B8AA9),
                                            )),
                                        Row(
                                          children: [
                                            Image.asset("assets/arrow.png",
                                              height: 24,),
                                            const SizedBox(width: 10),
                                            const Text.rich(TextSpan(
                                                text: '1.1',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                                children: <InlineSpan>[
                                                  TextSpan(
                                                    text: '°C',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xFF2BC193),
                                                    ),
                                                  ),
                                                ])),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text.rich(TextSpan(
                                            text: 'Green',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: 'Verse',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF2BC193),
                                                ),
                                              ),
                                            ])),
                                        const SizedBox(height: 60),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text("Temperature",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF7B8AA9),
                                                )),
                                            Row(
                                              children: [
                                                Image.asset("assets/arrow.png",
                                                  height: 24,),
                                                const SizedBox(width: 10),
                                                const Text.rich(TextSpan(
                                                    text: '33',
                                                    style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                    children: <InlineSpan>[
                                                      TextSpan(
                                                        text: '°C',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0xFF2BC193),
                                                        ),
                                                      ),
                                                    ])),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset("assets/imp/GAI.png",
                  width: screenSize.width/1.1,),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Card(
                    elevation: 1,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: screenSize.width/0.8,
                      height: 200,
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                children: [
                                  Stack(
                                    children: [
                                      SimpleCircularProgressBar(
                                        mergeMode: true,
                                        animationDuration: 1,
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Center(
                                            child: Text("34",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                )),
                                          )),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Emission/month',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2BC193)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text("Carbon Emission",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      )),
                                  const SizedBox(height: 20),
                                  const Text("34%",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF2BC193),
                                      )),
                                  const SizedBox(height: 25),
                                  ElevatedButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFF2BC193),
                                      minimumSize: const Size(40, 40),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      side: const BorderSide(
                                        width: 2,
                                        color: Color(0xFF2BC193),
                                      ),
                                    ),
                                    onPressed: () {

                                    },
                                    child: const Text(
                                      'Reduce Impact',
                                      style: TextStyle(fontSize: 12, fontFamily: 'Inter'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),
        ));
  }

  @override
  void dispose() {
    counter.dispose();
    super.dispose();
  }
}
