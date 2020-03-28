import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../utils/Constants.dart';
import '../widgets.dart';

class WithColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('WithColumn'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: AnimationLimiter(
          child: ColumnAnimation(
            children: [
              EmptyCard(
                width: MediaQuery.of(context).size.width,
                height: 166.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const EmptyCard(height: 50.0, width: 50.0),
                    const EmptyCard(height: 50.0, width: 50.0),
                    const EmptyCard(height: 50.0, width: 50.0),
                  ],
                ),
              ),
              Row(
                children: [
                  const Flexible(child: EmptyCard(height: 150.0)),
                  const Flexible(child: EmptyCard(height: 150.0)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const Flexible(child: EmptyCard(height: 50.0)),
                    const Flexible(child: EmptyCard(height: 50.0)),
                    const Flexible(child: EmptyCard(height: 50.0)),
                  ],
                ),
              ),
              EmptyCard(
                width: MediaQuery.of(context).size.width,
                height: 166.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
