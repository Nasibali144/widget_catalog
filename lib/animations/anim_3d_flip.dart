import 'package:flutter/material.dart';

class Flip3D extends StatefulWidget {
  final Widget child;
  final AnimationController animationController;

  const Flip3D({Key? key, required this.child, required this.animationController}) : super(key: key);

  @override
  _Flip3DState createState() => _Flip3DState();
}

class _Flip3DState extends State<Flip3D> with SingleTickerProviderStateMixin {
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    _animation = Tween(begin: 0.0, end: 1.0).animate(widget.animationController)..addListener(() {
      setState(() {});
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateX(3.14 * _animation.value),
      child: widget.child,
    );
  }
}
