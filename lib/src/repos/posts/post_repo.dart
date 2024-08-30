import 'package:sample_social/src/models/post/post_model.dart';

class PostRepo {
  // Pagination. Pagination needed big time.
  Future<List<PostModel>> fetchPostsForUser(String uid) async {
    // This would call the HttpService that is mentioned
    // in the user repo. This should be paginated.
    // I am imagining the uid is passed in to get
    // specific posts for the user.
    // Passing in the uid would also allow the backend to filter
    // if the post has been liked by the user, the current likes count. etc.
    //  I suppose I could have used a List.generate to create the fake posts.
    return [
      PostModel(
        id: '9823f0892h3',
        title: 'My Beautiful Post',
        contentImageUrl: 'https://picsum.photos/600',
        body: 'This is the body of the post. Just some content to share.',
        likes: 4512,
        personalLike: true,
      ),
      PostModel(
        id: '23fre4wrsd',
        title: 'My Excellent Post',
        contentImageUrl: 'https://picsum.photos/600',
        body: 'This is the body of the post. Just some content to share.',
        likes: 23,
        personalLike: false,
      ),
      PostModel(
        id: '13e2rfw',
        title: 'My Top Post',
        contentImageUrl: 'https://picsum.photos/600',
        body: 'This is the body of the post. Just some content to share.',
        likes: 4512,
        personalLike: true,
      ),
      PostModel(
        id: '32re45t',
        title: 'My Beautiful Post',
        contentImageUrl: 'https://picsum.photos/600',
        body: 'This is the body of the post. Just some content to share.',
        likes: 4512,
        personalLike: true,
      ),
    ];
  }
}
