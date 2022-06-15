import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppbar(),
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: const [
                Hero(tag: "tag", child: ShoePreview()),
                SizedBox(height: 15),
                ShoeDescription(),
              ],
            ),
          )),
          const SizedBox(height: 10),
          const AddCart(
            monto: 180,
            text: "Add to cart",
          ),
        ],
      ),
    );
  }
}
