import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import '../utils/Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDDDDD),
      appBar: AppBar(
        title: Text('Library Testing'),
        centerTitle: true,
      ),
      body: GroupedListView<dynamic, String>(
        elements: pages,
        groupBy: (element) => element['group'],
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text('Package: $value'),
          ),
        ),
        itemBuilder: (context, element) {
          return Card(
            elevation: 8,
            child: ListTile(
              title: Text(element['title']),
              onTap: () => Navigator.of(context).pushNamed(element['page']),
            ),
          );
        },
      ),
    );
  }
}
