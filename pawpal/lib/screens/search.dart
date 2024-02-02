import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(children: [
            SearchBar(
              hintText: "Search in pets wiki",
              textStyle: MaterialStateProperty.all(kNormalTextStyle.copyWith(fontSize: 14)),
              elevation: MaterialStateProperty.all(2),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              trailing: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(LucideIcons.search),
                )
              ],
              onSubmitted: (String query) {},
            ),
          ]),
        ),
      ),
    );
  }
}
