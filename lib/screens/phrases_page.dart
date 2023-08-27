import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> items = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: '来ますか',
      enName: 'Are you coming?',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: '購読することを忘れないでください',
      enName: 'Don\'t forget to subscribe!',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'ご気分はいかがですか。',
      enName: 'How are you feeling?',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: '私はアニメが大好きです',
      enName: 'I love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: '私はプログラミングが大好きです',
      enName: 'I love programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'プログラミングは簡単です',
      enName: 'Programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'あなたの名前は何ですか',
      enName: 'What is your name?',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'どこに行くの',
      enName: 'Where are you going?',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'はい、行きます',
      enName: 'Yes, I\'m coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(), //change scroll effect
        itemCount: items.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: items[index],
          );
        },
      ),
    );
  }
}
