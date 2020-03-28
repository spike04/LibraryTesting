import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../utils/Constants.dart';
import '../widgets.dart';

class WithGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var columnCount = 3;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('WithGridView'),
      ),
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: columnCount,
          childAspectRatio: 1.0,
          padding: EdgeInsets.all(8),
          children: List.generate(
            100,
            (index) => GridAnimation(
              columnCount: columnCount,
              index: index,
              child: Card(),
            ),
          ),
        ),
      ),
    );
  }
}
