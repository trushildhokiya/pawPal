import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pawpal/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2),(){
      context.pushReplacement('/start');
    });
  }

  @override
  void dispose() {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kYellowGold,
      body: Column(
        children: [
          Image.asset("assets/images/pattern.png", fit: BoxFit.cover, height: 200,),
          Container(
            margin: EdgeInsets.fromLTRB(0,60,0,5),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Paw",style: kHeadingTextStyle.copyWith(color: Colors.white)),
                Text("Pal",style: kHeadingTextStyle.copyWith(color: kBrown)),
              ],
            )
          ),
          Text("Care for All", style: kNormalTextStyle.copyWith(fontSize: 12,color: Colors.white, fontWeight: FontWeight.w600),)
        ],
      )
    );
  }
}
