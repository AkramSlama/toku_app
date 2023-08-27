import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> items = const [
    ItemModel(
      sound: 'sounds/colors/black.wav',
      jpName: 'Schwarz',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Braun',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      jpName: 'Grun',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      jpName: 'Rot',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      sound: 'sounds/colors/yellow.wav',
      jpName: 'Gelb',
      enName: 'Yellow',
      image: 'assets/images/colors/color_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/white.wav',
      jpName: 'WeiB',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      sound: 'sounds/colors/dusty_yellow.wav',
      jpName: '!!',
      enName: 'Dusty_Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      jpName: '!!!',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyMember'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Item(
            item: items[index],
            backgroundColor: Colors.red,
          );
        },
      ),
    );
  }
}
