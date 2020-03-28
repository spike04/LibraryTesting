import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ColumnAnimation extends StatelessWidget {
  final List<Widget> children;

  const ColumnAnimation({Key key, this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: AnimationConfiguration.toStaggeredList(
        duration: Duration(milliseconds: 375),
        childAnimationBuilder: (widget) => SlideAnimation(
          horizontalOffset: MediaQuery.of(context).size.width / 2,
          child: FadeInAnimation(child: widget),
        ),
        children: children,
      ),
    );
  }
}
