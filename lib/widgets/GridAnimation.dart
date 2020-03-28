import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class GridAnimation extends StatelessWidget {
  final int index;
  final int columnCount;
  final Widget child;

  const GridAnimation({
    Key key,
    this.index,
    this.columnCount,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: columnCount,
      position: index,
      duration: Duration(milliseconds: 375),
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}
