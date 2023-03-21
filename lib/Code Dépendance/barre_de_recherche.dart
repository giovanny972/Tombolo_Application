import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  TextEditingController textController = TextEditingController();

  get onSubmitted => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimSearchBar(
        width: 400,
        textController: textController,
        onSuffixTap: () {},
        onSubmitted: onSubmitted,
      ),
    );
  }
}
