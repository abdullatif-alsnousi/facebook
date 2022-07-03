// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class MakeLikeButton extends StatefulWidget {
  bool isActive = false;
  MakeLikeButton({Key? key, required this.isActive}) : super(key: key);

  @override
  State<MakeLikeButton> createState() => _MakeLikeButtonState();
}

class _MakeLikeButtonState extends State<MakeLikeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        //border: Border.all(color: Colors.grey[200]),
      ),
      child: InkWell(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.thumb_up,
                  color: widget.isActive ? Colors.blue : Colors.grey, size: 18),
              const SizedBox(width: 5),
              Text(
                'Like',
                style: TextStyle(
                  color: widget.isActive ? Colors.blue : Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          setState(() {
            widget.isActive = !widget.isActive;
          });
        },
      ),
    );
  }
}
