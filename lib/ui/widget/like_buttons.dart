import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class LikeButtons extends StatelessWidget {

  final bool star;
  final LikeButtonTapCallback? starCallback;
  final bool heart;
  final LikeButtonTapCallback? heartCallback;

  const LikeButtons({
    super.key,
    this.star = false,
    this.starCallback,
    this.heart = false,
    this.heartCallback
  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LikeButton(
          size: 40,
          isLiked: star,
          likeBuilder: (isLiked) {
            return Icon(Icons.star,
              size: 40,
              color: isLiked ? Colors.yellow : Colors.grey,
            );
          },
          onTap: (isLiked) async {
            return !isLiked;
          },
        ),
        LikeButton(
          size: 40,
          isLiked: heart,
          onTap: (isLiked) async {
            return !isLiked;
          }
        )
      ]
    );
  }

}