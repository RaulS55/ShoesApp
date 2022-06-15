import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButtoms extends StatelessWidget {
  const CircularButtoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _CircularButtom(icon: Icons.favorite),
          _CircularButtom(icon: Icons.shopping_cart),
          _CircularButtom(icon: Icons.settings),
        ],
      ),
    );
  }
}

class _CircularButtom extends StatefulWidget {
  const _CircularButtom({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  State<_CircularButtom> createState() => _CircularButtomState();
}

class _CircularButtomState extends State<_CircularButtom> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        color: Colors.transparent,
        child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 5))
                ]),
            child: Icon(
              widget.icon,
              color: select ? Colors.red : Colors.grey,
            )),
        onPressed: () {
          if (widget.icon == Icons.favorite) {
            select = !select;
            setState(() {});
          }
        });
  }
}

class ButtomController extends ChangeNotifier {
  bool _select = false;
  bool get select => _select;
  set select(bool value) {
    _select = value;
    notifyListeners();
  }
}
