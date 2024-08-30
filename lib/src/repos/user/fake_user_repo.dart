import 'package:sample_social/src/models/user_model.dart';

// TODO: Need Tests for sure.
class FakeUserRepo {
  // Here, I would have a dependency on an HttpService,
  // It would have all the typical calls, get, post, put patch delete.
  // All those functions would run through a sendResponse function that has
  // parameters like:

  //  required String baseUrl,
  // required String path,
  // required HttpMethod method,
  // String? jwt,
  // Map<String, String>? headers,
  // Map<String, dynamic>? body,
  // Map<String, String>? queryParameters,
  // List<int>? bodyBytes,

  // I'd typically use the http package, set up the request with
  // appropriate headers, authorization etc.
  //  I'd add a correlation id header to track a users backend usage
  // based on that session.
  // jsonEncode the body/bodyBytes, and make the request and await response

  // In the past, I have used something like

  // class AppHttpResponse {
//   int? statusCode;
//   dynamic body;
//   Uint8List? bodyBytes;
//   Object? error;
//   Map<String, String>? headers;

//   AppHttpResponse({
//     this.statusCode,
//     this.body,
//     this.error,
//     this.headers,
//     this.bodyBytes,
//   });
// }

// to return for all the requests.

// Another option is to throw specific exceptions based on the response statusCodes.

// also, handle timeouts.

  Future<UserModel> fetchUser(String uid) async {
    // Could be the place to fetch from cache if it can.
    // For the sake of the exercise, just returning a simple model.
    // A profile can certainly have many more parameters, enums for pronouns,
    // gender. Links etc.
    await Future.delayed(const Duration(seconds: 2));
    return UserModel(
      uid: uid,
      name: 'Timothy Sanderson',
      userName: 'timtamtadoodle',
      userImageUrl: "http://via.placeholder.com/100x100",
      bio:
          "What's up, all! I'm Tim! Thanks for checking out my profile. I like spoons, playing the clarinet, and listening to J.S. Bach",
      postCount: 342,
      followersCount: 12,
      followingCount: 626263,
    );
  }
}
