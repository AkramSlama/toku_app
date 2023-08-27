import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.item,
    required this.backgroundColor,
  }) : super(key: key);

  final ItemModel item;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: backgroundColor,
      child: Row(
        children: [
          Container(
            color: Colors.white54,
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(item.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
