import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pawpal/utils/constants.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final _key = GlobalKey<ExpandableFabState>();
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
        _key.currentState?.toggle();
      });
    } on PlatformException catch (e) {
      print("Failed to pick image $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Post",
          style: kHeading2TextStyle.copyWith(
              fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: image != null
                    ? Image.file(
                        image!,
                        fit: BoxFit.cover,
                      )
                    : Center(child: Text("No image found :<")),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextButton.icon(
                icon: Icon(LucideIcons.save, color: Colors.black,),
                label: Text("Save",style: kButtonTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orangeAccent.shade400),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))
                ),
                onPressed: (){
                  setState(() {
                    image=null;
                  });
                },
              ),
            )
          ],
        ),
      )),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: _key,
        distance: 100,
        type: ExpandableFabType.fan,
        openButtonBuilder: RotateFloatingActionButtonBuilder(
          child: Icon(
            LucideIcons.menu,
          ),
          fabSize: ExpandableFabSize.regular,
          foregroundColor: kBrown,
          backgroundColor: kYellowGold,
          shape: const CircleBorder(),
        ),
        closeButtonBuilder: RotateFloatingActionButtonBuilder(
          child: Icon(
            LucideIcons.x,
          ),
          fabSize: ExpandableFabSize.regular,
          foregroundColor: kBrown,
          backgroundColor: kYellowGold,
          shape: const CircleBorder(),
        ),
        children: [
          FloatingActionButton.small(
            heroTag: null,
            backgroundColor: Colors.orange.shade100,
            foregroundColor: Colors.black,
            shape: const CircleBorder(),
            child: const Icon(LucideIcons.image),
            onPressed: () => pickImage(ImageSource.gallery),
          ),
          FloatingActionButton.small(
            heroTag: null,
            backgroundColor: Colors.orange.shade100,
            foregroundColor: Colors.black,
            shape: const CircleBorder(),
            child: const Icon(LucideIcons.aperture),
            onPressed: () => pickImage(ImageSource.camera),
          ),
          FloatingActionButton.small(
            heroTag: null,
            backgroundColor: Colors.orange.shade100,
            foregroundColor: Colors.black,
            shape: const CircleBorder(),
            child: const Icon(LucideIcons.link),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
