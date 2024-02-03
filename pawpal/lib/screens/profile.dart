import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async{
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kYellowGold.withAlpha(50),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: CircleAvatar(
                            child: RandomAvatar('Trushil',
                                trBackground: true, height: 55, width: 55),
                            radius: 35,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Trushil Dhokiya",
                                style: kNormalTextStyle.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Software Developer",
                                style: kNormalTextStyle.copyWith(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "34",
                                  style: kNormalTextStyle.copyWith(
                                      fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Posts",
                                  style: kNormalTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Passionate pet lover, fostering joy through fur and wagging tails. Advocate for adoption, treats, and endless cuddles. Tail-wagging enthusiast.",
                              style: kNormalTextStyle.copyWith(fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // heading
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Posts",
                      style:
                          kNormalTextStyle.copyWith(fontSize:16,fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      LucideIcons.settings,
                      size: 20,
                    )
                  ],
                ),
              ),

              // create post list
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(34, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/${400+index}"),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
