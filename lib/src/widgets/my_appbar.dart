import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 50,
        child: Row(
          children: const [
            Text(
              "For you",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
