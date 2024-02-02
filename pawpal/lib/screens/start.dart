import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pawpal/utils/constants.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "logo",
              child: Image.asset(
                "assets/images/logo.png",
                width: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Paw",
                  style: kHeadingTextStyle,
                ),
                Text(
                  "Pal",
                  style: kHeadingTextStyle.copyWith(color: kBrown),
                )
              ],
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kYellowGold),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30))),
              child: Text(
                "Login",
                style: kButtonTextStyle.copyWith(fontSize: 13),
              ),
              onPressed: () {
                context.push('/auth/login');
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text(
                    "Dont have an account ?",
                    style: kNormalTextStyle,
                  ),
                  TextButton(
                      onPressed: () {
                        context.push('/auth/register');
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "Register now",
                        style: kNormalTextStyle.copyWith(color: kBrown),
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
