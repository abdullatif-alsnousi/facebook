import 'package:flutter/material.dart';

class MakeShareButton extends StatelessWidget {
  const MakeShareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        //border: Border.all(color: Colors.grey[200]),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5),
            Text(
              'Share',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
