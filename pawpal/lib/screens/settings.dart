import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(
                        LucideIcons.settings,
                        size: 30,
                        color: kBrown,
                      )),
                  Text("Settings",style: kHeading2TextStyle.copyWith(color: kBrown),)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
