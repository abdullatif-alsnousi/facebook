import 'package:facebook/pages/make_feed.dart';
import 'package:facebook/pages/make_story.dart';
import 'package:facebook/pages/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2),
                        ),
                        const Text('See Archive'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MakeStory(
                            storyImage: 'assets/images/story/story-1.jpg',
                            userImage: 'assets/images/story/user-1.jpg',
                            userName: 'John Doe',
                          ),
                          MakeStory(
                            storyImage: 'assets/images/story/story-2.jpg',
                            userImage: 'assets/images/story/user-2.jpg',
                            userName: 'John Doe',
                          ),
                          MakeStory(
                            storyImage: 'assets/images/story/story-3.jpg',
                            userImage: 'assets/images/story/user-3.jpg',
                            userName: 'John Doe',
                          ),
                          MakeStory(
                            storyImage: 'assets/images/story/story-4.jpg',
                            userImage: 'assets/images/story/user-4.jpg',
                            userName: 'John Doe',
                          ),
                          MakeStory(
                            storyImage: 'assets/images/story/story-5.jpg',
                            userImage: 'assets/images/story/user-5.jpg',
                            userName: 'John Doe',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const MakeFeed(
                      userName: 'John Doe',
                      userImage: 'assets/images/story/user-1.jpg',
                      feedTime: '1 hr ago',
                      feedText:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      feedImage: 'assets/images/story/story-1.jpg',
                      isActive: true,
                    ),
                    const MakeFeed(
                      userName: 'John Doe',
                      userImage: 'assets/images/story/user-2.jpg',
                      feedTime: '1 hr ago',
                      feedText:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      feedImage: '',
                      isActive: true,
                    ),
                    const MakeFeed(
                      userName: 'John Doe',
                      userImage: 'assets/images/story/user-3.jpg',
                      feedTime: '1 hr ago',
                      feedText:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      feedImage: 'assets/images/story/story-4.jpg',
                      isActive: false,
                    ),
                    const MakeFeed(
                      userName: 'John Doe',
                      userImage: 'assets/images/story/user-5.jpg',
                      feedTime: '1 hr ago',
                      feedText:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      feedImage: 'assets/images/story/story-5.jpg',
                      isActive: true,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
