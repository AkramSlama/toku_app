import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import '../models/item_model.dart';

// a5dt balak
// lazem ba7aded el changes
// b3ml refresh w a5tarhom kolhm

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> number = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: '1つ',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: '二',
      enName: 'Two',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: '三つ',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: '四',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: '五',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: '六',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'セブン',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpName: '八',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jpName: '九',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'テン',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: number.length,
        itemBuilder: (context, index) {
          return Item(
            item: number[index],
            backgroundColor: Colors.green,
          );
        },
      ),
    );
  }
}
