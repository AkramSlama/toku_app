import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> items = const [
    ItemModel(
      sound: 'sounds/colors/black.wav',
      jpName: '黒',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      jpName: '茶色',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      jpName: '緑',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      jpName: '赤',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      sound: 'sounds/colors/yellow.wav',
      jpName: '黄色',
      enName: 'Yellow',
      image: 'assets/images/colors/color_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/white.wav',
      jpName: '白',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      sound: 'sounds/colors/dusty_yellow.wav',
      jpName: 'ダスティイエロー',
      enName: 'Dusty_Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      jpName: 'グレー',
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
