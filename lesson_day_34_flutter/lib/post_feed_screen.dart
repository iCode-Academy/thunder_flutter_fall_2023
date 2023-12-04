import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_day_34_flutter/widgets/post_card.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline),
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: false,
        title: SvgPicture.asset(
          'assets/images/bank.svg',
          height: 40,
        ),
      ),
      body: PostCard(),
    );
  }
}
