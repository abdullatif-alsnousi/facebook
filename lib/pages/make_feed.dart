import 'package:facebook/pages/make_like_button.dart';
import 'package:flutter/material.dart';
import 'make_comment_button.dart';
import 'make_like.dart';
import 'make_love.dart';
import 'make_share_button.dart';

class MakeFeed extends StatelessWidget {
  final String userName;
  final String feedTime;
  final String feedText;
  final String userImage;
  final String feedImage;
  final bool isActive;

  const MakeFeed({
    Key? key,
    required this.userName,
    required this.feedTime,
    required this.feedText,
    required this.feedImage,
    required this.userImage,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        feedTime,
                        style: const TextStyle(
                            color: Colors.grey, fontSize: 15, letterSpacing: 1),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            feedText,
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: 15,
                height: 1.5,
                letterSpacing: 0.7),
          ),
          const SizedBox(height: 20),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(feedImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const MakeLike(),
                  Transform.translate(
                    offset: const Offset(-5, 0),
                    child: const MakeLove(),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '2.8k',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MakeLikeButton(isActive: isActive),
              const MakeCommentButton(),
              const MakeShareButton(),
            ],
          ),
        ],
      ),
    );
  }
}
