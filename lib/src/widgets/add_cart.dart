import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_buttom.dart';
import 'package:shoes_app/src/widgets/exports.dart';

class AddCart extends StatelessWidget {
  const AddCart(
      {Key? key, required this.monto, this.background, required this.text})
      : super(key: key);
  final double monto;
  final Color? background;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10).copyWith(top: 0),
      padding: background == Colors.transparent
          ? const EdgeInsets.symmetric(vertical: 0, horizontal: 20)
          : const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: background ?? Colors.grey.shade200,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$${monto.toString()}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Bounce(
            delay: const Duration(milliseconds: 700),
            from: 10,
            child: CustomButtom(
              text: text,
            ),
          )
        ],
      ),
    );
  }
}
