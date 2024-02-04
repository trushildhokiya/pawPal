import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';
import 'package:random_avatar/random_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> data = [
    {
      'imageUrl':
          'https://static.vecteezy.com/system/resources/previews/005/857/332/non_2x/funny-portrait-of-cute-corgi-dog-outdoors-free-photo.jpg',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1533738363-b7f9aef128ce?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMGNhdHxlbnwwfHwwfHx8MA%3D%3D',
    },
    {
      'imageUrl':
          'https://us.feliway.com/cdn/shop/articles/7_Reasons_Why_Humans_Cats_Are_A_Match_Made_In_Heaven-9.webp?v=1667409797',
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCFEmVvTHThpqeXf9Pv-PhCQMSrKPe41URA45ofiRHKgKYOqP51iQIXUkzgl--kt6mCyE&usqp=CAU',
    },
    {
      'imageUrl':
          'https://wallpapers.com/images/hd/dog-meme-pictures-h52j2kp8wuzz1946.jpg',
    },
    {
      'imageUrl':
          'https://www.shutterstock.com/image-photo/skeptic-surprised-cat-thinking-dont-600nw-1905929728.jpg',
    },
    {
      'imageUrl':
          'https://i0.wp.com/katzenworld.co.uk/wp-content/uploads/2019/06/funny-cat.jpeg?fit=1920%2C1920&ssl=1',
    },
    {
      'imageUrl':
          'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2023/8/15/08/shutterstock_1794268351_dog-halloween-costume-cactus.jpg.rend.hgtvcom.616.411.suffix/1692136836964.jpeg',
    },
    {
      'imageUrl':
          'https://www.firstforwomen.com/wp-content/uploads/sites/2/2024/10/smrm1977.jpg?w=953',
    },
    {
      'imageUrl': 'https://i.insider.com/5f18a9a1f0f4194db865a0a6?width=700',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Aligns children to the start (left) of the cross axis
            children: [
              FlutterCarousel(
                options: CarouselOptions(
                  height: 250.0,
                  viewportFraction: 1,
                  showIndicator: true,
                  slideIndicator: CircularWaveSlideIndicator(),
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayCurve: Curves.decelerate,
                  enableInfiniteScroll: true,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/${1080 + i}"),
                              opacity: 0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,10,0),
                      child: Icon(LucideIcons.image,size: 20,),
                    ),
                    Text(
                      'Posts',
                      style: kNormalTextStyle.copyWith(
                          fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              // List of Posts
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: kYellowGold.withAlpha(10),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Container(
                          margin:EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children:[
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: CircleAvatar(
                                  child: RandomAvatar('Trushil+$index',
                                      trBackground: true, height: 55, width: 55),
                                  radius: 12,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "PetLover$index",
                                  style: kNormalTextStyle.copyWith(fontSize: 10),
                                ),
                              )
                            ]
                          ),
                        ),
                        Container(
                          height: 300,
                          child: Container(
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(2),
                              image: DecorationImage(
                                image:
                                    NetworkImage(data[index]['imageUrl'] ?? ''),
                                opacity: 0.8,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  LucideIcons.heart,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  LucideIcons.messageCircle,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  LucideIcons.send,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("December 2023",style: kNormalTextStyle.copyWith(fontSize: 10),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )

            ],
          ),
        ),
      ),

    );
  }
}
