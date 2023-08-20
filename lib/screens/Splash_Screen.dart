import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:greenverse/constants/images_Var.dart';
import './Profile_Page.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return IntroductionSlider(
      items: const [
        IntroductionSliderItem(
          logo: Image(
              image: AssetImage(SSCalc) , height: 400),
          title: Text.rich(
              TextSpan(
                  text: 'Carbon ',
                  style: TextStyle(
                    height:3,
                    fontSize: 30,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2BC193),
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Calculator',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ]),
              textAlign: TextAlign.center),
          subtitle: Text.rich(
              TextSpan(
                  text:
                      'Calculate your emission and control the \npollution! know your area’s status by ',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Green AI',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2BC193),
                      ),
                    )
                  ]),
              textAlign: TextAlign.center),
          backgroundColor: Colors.white,
        ),


        IntroductionSliderItem(
          logo: Image(image: AssetImage(SSCommunity)  , height: 400),
          title: Text.rich(
              TextSpan(
                  text: 'Community',
                  style: TextStyle(
                    height:3,
                    fontSize: 30,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
              textAlign: TextAlign.center),
          subtitle: Text.rich(
              TextSpan(
                  text:
                  'Connect, share, and inspire for collective\n climate action and awareness',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
              textAlign: TextAlign.center),
          backgroundColor: Colors.white,
        ),
        IntroductionSliderItem(
          logo: Image(image: AssetImage(SSGmart) , height: 400),
          title: Text.rich(
              TextSpan(
                  text: 'G',
                  style: TextStyle(
                    height:3,
                    fontSize: 30,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2BC193),
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'mart',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ]),
              textAlign: TextAlign.center),
          subtitle: Text.rich(
              TextSpan(
                  text:
                  'Get ECO friendly Products in our Gmart! \nAmazing offers with ',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RedHatText',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Gcoin',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RedHatText',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2BC193),
                      ),
                    )
                  ]),
              textAlign: TextAlign.center),
          backgroundColor: Colors.white,
        ),
      ],
      done: Done(
        child: Icon(Icons.done),
        home: Profile_Page(),
      ),
      next: Next(
        child: Icon(
          Icons.arrow_forward,
          color: Color(0xFF2BC193),
        ),
        curve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
      ),
      back: Back(child: Icon(Icons.arrow_back)),
      dotIndicator: DotIndicator(
          selectedColor: Color(0xFF2BC193),
          unselectedColor: Colors.grey.withOpacity(0.5),
          size: 8.0),
    );
  }
}
