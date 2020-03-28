import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimation extends StatelessWidget {
  final int index;
  final Widget child;

  const ListAnimation({
    Key key,
    this.index,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      child: SlideAnimation(
        verticalOffset: 44.0,
        child: FadeInAnimation(
          duration: Duration(milliseconds: 375),
          child: child,
        ),
      ),
    );
  }
}
