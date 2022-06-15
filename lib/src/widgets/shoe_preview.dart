import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoe_controller.dart';
import 'package:shoes_app/src/pages/shoe_detail.dart';

class ShoePreview extends StatelessWidget {
  const ShoePreview(
      {Key? key, this.hMargin = 30, this.vMargin = 0, this.shoeSize = true})
      : super(key: key);
  final double hMargin, vMargin;
  final bool shoeSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (shoeSize == true) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const ShoeDetailPage()));
        }
      },
      child: Container(
        height: 440,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: hMargin, vertical: vMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffF8D468)),
        child: Column(
          children: [
            const _ShadowShoe(),
            if (shoeSize) const _ShowSize(),
          ],
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  const _ShadowShoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 30,
            right: 5,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                width: 230,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)
                  ],
                ),
              ),
            ),
          ),
          Selector<ShoeController, String>(
            selector: (_, c) => c.assetImage,
            builder: (_, imag, __) => Image(image: AssetImage(imag)),
          ),
        ],
      ),
    );
  }
}

class _ShowSize extends StatelessWidget {
  const _ShowSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30).copyWith(top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _ShowSizeItem(talla: 7),
          _ShowSizeItem(talla: 7.5),
          _ShowSizeItem(talla: 8),
          _ShowSizeItem(talla: 8.5),
          _ShowSizeItem(talla: 9),
        ],
      ),
    );
  }
}

class _ShowSizeItem extends StatelessWidget {
  const _ShowSizeItem({
    Key? key,
    required this.talla,
  }) : super(key: key);
  final double talla;
  @override
  Widget build(BuildContext context) {
    final size = context.select<ShoeController, double>((c) => c.size);
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        final controller = Provider.of<ShoeController>(context, listen: false);
        controller.size = talla;
      },
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: talla == size ? const Color(0xffEAA14E) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (talla == size)
              const BoxShadow(color: Color(0xffEAA14E), blurRadius: 20)
          ],
        ),
        child: Text(
          talla.toString().replaceAll(".0", ""),
          style: TextStyle(
              fontSize: 15,
              color: talla == size ? Colors.white : const Color(0xffEAA14E),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
