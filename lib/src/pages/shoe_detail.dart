import 'package:flutter/material.dart';
import 'package:shoes_app/src/helpers/helpers.dart';
import 'package:shoes_app/src/widgets/exports.dart';

class ShoeDetailPage extends StatelessWidget {
  const ShoeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusLight();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: const [
              Hero(
                tag: "tag",
                child: ShoePreview(
                  hMargin: 10,
                  vMargin: 10,
                  shoeSize: false,
                ),
              ),
              ShoeDescription(),
              AddCart(
                monto: 180,
                background: Colors.transparent,
                text: "Buy now",
              ),
              ShoeColors(),
              SizedBox(height: 30),
              CircularButtoms(),
            ],
          ),
          Positioned(
            top: 30,
            left: 20,
            child: GestureDetector(
              onTap: () {
                changeStatusdark();
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_left_outlined,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
