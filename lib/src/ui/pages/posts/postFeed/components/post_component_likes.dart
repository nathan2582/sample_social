import 'package:flutter/material.dart';

class PostComponentLikes extends StatelessWidget {
  const PostComponentLikes(this.likes, this.personalLike, {super.key});

  final int likes;
  final bool personalLike;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('set the post to be liked');
      },
      child: Row(
        children: [
          Icon(
            personalLike ? Icons.favorite : Icons.favorite_border,
            color: personalLike ? Colors.red : null,
          ),
          const SizedBox(width: 8),
          Text('$likes'),
        ],
      ),
    );
  }
}
