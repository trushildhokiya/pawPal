import 'package:flutter/material.dart';
import 'package:pawpal/utils/constants.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kYellowGold.withAlpha(50),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: CircleAvatar(
                      child: RandomAvatar('trushil', trBackground: true, height: 55, width: 55),
                      radius: 35,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Trushil Dhokiya",style: kNormalTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),),
                        Text("Software Developer", style: kNormalTextStyle.copyWith(fontSize: 10),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
