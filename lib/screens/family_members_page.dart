import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> number = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: '父親',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: '娘',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: '母親',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand_father.wav',
      jpName: '祖父',
      enName: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand_mother.wav',
      jpName: '祖母',
      enName: 'grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older_brother.wav',
      jpName: '兄',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older_sister.wav',
      jpName: '姉',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: '息子',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger_brohter.wav',
      jpName: '弟',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger_sister.wav',
      jpName: '妹',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
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
        itemCount: number.length,
        itemBuilder: (context, index) {
          return Item(
            item: number[index],
            backgroundColor: Colors.blueGrey,
          );
        },
      ),
    );
  }
}
