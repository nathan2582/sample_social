# Tasks for Coding Exercise

Create a simple Flutter app that has basic social capabilities

A user centric view where they can see their profile
Screen for listing mock posts from friends and a detail view of the posts
Placeholders for what good data structures for users and posts and friends

# Reflections after the 2 hour challenge

I stayed true to the disabling code generation and made a hard stop at 2 hours (with a 5-10 minute restroom break).

The code has a number of comments throughout it on things I would add, change, edit, etc. It is not an exhaustive list, just what came to me throughout the challenge.

Given the time constraints and my current limited BLoC experience, I went with Provider for state management as that is what I am used to. I am a quick learner and can pick up on established patterns quite well.

I started with setting up the folder structure and adding packages I knew I would be using.

Since a user is necessary before posts can happen, I started with building the user profile page. I started modeling the UI after Instagram.

I tried to keep coupling to a minimum, passing in only the parameters needed to build the widgets.

I made the mistake of stepping out of scope and spent 15-20 minutes on a user profile posts section, which wasn't listed in the coding exercise. That was a costly amount of time I could have spent on the post feed.

When I saw how much time I spent out of scope, I started to panic and moved right to the post feed page. Built a simple PostModel with minimum functionality and quickly assembled a PostFeedPage with PostComponents.

Pagination.. I am embarrassed I did not get the post pagination implemented within the time constraint.

I also realize that I did not handle the friends portion within the UserModel. I can see a few ways to handle that.

Either the friend user ids come back as a List of Strings on the user model. Or they could be a separate call to a friends endpoint that returns paginated List of UserModels of the friends.

I forgot to add userId, userName, and userAvatarImage to the PostModel. That was an oversight and would have been noticed had I given myself more time on that feature.

Then I added an InkWell to each post component to tap into a post details page.

Given the time constraints and typing everything by hand, I opted for Navigator 1.0.

Unit tests, widget tests, integration tests are needed for sure..

I started to get more lax on my commit messages and history toward the end of the challenge, which I am not proud of.

The UI/UX is nowhere near the standard I prefer.

It's shocking how much code generation has reduced the amount of typing needed. Since I disabled code completion/generation, it became quite clear how helpful those tools are for saving the wrists and fingers!
