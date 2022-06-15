import 'package:flutter/cupertino.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    required this.text,
    this.verticalPadding = 15,
    this.color = const Color(0xffEAA14E),
  }) : super(key: key);
  final String text;
  final double verticalPadding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
      borderRadius: BorderRadius.circular(30),
      color: color,
      child: Text(
        text,
      ),
      onPressed: () {},
    );
  }
}
