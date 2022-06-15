import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoe_controller.dart';
import 'package:shoes_app/src/widgets/custom_buttom.dart';

class ShoeColors extends StatelessWidget {
  const ShoeColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ShoeController>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 90,
                  child: _CircleColor(
                    color: const Color(0xffC6D642),
                    onPressed: () {
                      controller.assetImage = "assets/verde.png";
                    },
                  )),
              Positioned(
                  left: 60,
                  child: _CircleColor(
                    color: const Color(0xffFFAD29),
                    onPressed: () {
                      controller.assetImage = "assets/amarillo.png";
                    },
                  )),
              Positioned(
                  left: 30,
                  child: _CircleColor(
                    color: const Color(0xff2099F1),
                    onPressed: () {
                      controller.assetImage = "assets/azul.png";
                    },
                  )),
              _CircleColor(
                color: const Color(0xff364D56),
                onPressed: () {
                  controller.assetImage = "assets/negro.png";
                },
              ),
            ],
          )),
          //Spacer(),
          const CustomButtom(
            text: "More related items",
            verticalPadding: 10,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _CircleColor extends StatelessWidget {
  const _CircleColor({
    Key? key,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
