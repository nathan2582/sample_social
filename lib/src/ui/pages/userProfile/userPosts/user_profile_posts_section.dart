import 'package:flutter/material.dart';

class UserProfilePostsSection extends StatelessWidget {
  const UserProfilePostsSection({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 9,
      itemBuilder: (context, i) {
        return Container(
          color: sampleColors[i % sampleColors.length],
          child: Center(
            child: Text('Post $i'),
          ),
        );
      },
    );
  }
}

final sampleColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.blue,
];
