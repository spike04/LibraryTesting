import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../utils/Constants.dart';
import '../widgets.dart';

class WithListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('WithListView'),
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListAnimation(
              index: index,
              child: Card(
                child: ListTile(
                  title: Text('Title $index'),
                  subtitle: Text('SubTitle $index'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
