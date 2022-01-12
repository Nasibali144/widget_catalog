import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);
  static const String id = "animations_page";

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  /// #animation_1
  // late Animation<double> _animation;

  /// #animation_2
  // late Animation<Size> _animation;

  /// #animation_3
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    /// #animation_1
    // _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
   
    /// #animation_2
    // _animation = Tween<Size>(begin: Size(150, 150), end: Size(200, 200))
    // .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    //
    // _controller.addStatusListener((status) {
    //   if(status == AnimationStatus.completed) {
    //     _controller.repeat();
    //   }
    // });

    /// #animation_3
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.5, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animation"),
      ),

      /// #animation_1
      // body: Center(
      //   child: FadeTransition(
      //     opacity: _animation,
      //     child: Image(
      //       height: 200,
      //       width: 200,
      //       image: AssetImage("assets/images/nature.jpg"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),

      /// #animation_2
      // body: Center(
      //   child: AnimatedBuilder(
      //     animation: _animation,
      //     builder: (context, child) {
      //       return Image(
      //         image: AssetImage("assets/images/nature.jpg"),
      //         fit: BoxFit.cover,
      //         height: _animation.value.height,
      //         width: _animation.value.width,
      //       );
      //     },
      //   ),
      // ),

      /// #animation_3
      body: SlideTransition(
        position: _animation,
        child: Center(child: FlutterLogo(size: 150,)),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
