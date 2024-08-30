import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample_social/src/models/post/post_model.dart';
import 'package:sample_social/src/ui/pages/posts/postDetails/post_details_page.dart';
import 'package:sample_social/src/ui/pages/posts/postFeed/components/post_component_likes.dart';

class PostFeedComponent extends StatelessWidget {
  const PostFeedComponent(this.post, {super.key});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailsPage(post),
          ),
        );
      },
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // I would encapsulate this into it's own widget for
            // standardizing the behavior of all images.
            post.contentImageUrl == null
                ? const SizedBox.shrink()
                : AspectRatio(
                    aspectRatio: 1,
                    child: CachedNetworkImage(
                      imageUrl: post.contentImageUrl!,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              // truncate the title if it is too long
              child: Text(
                post.title ?? '',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: PostComponentLikes(post.likes, post.personalLike),
            ),
          ],
        ),
      ),
    );
  }
}
