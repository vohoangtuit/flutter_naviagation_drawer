
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.green,
        ),
        itemCount: 30,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.0),
              child: Text("Home $index", style: TextStyle(color: Colors.redAccent, fontSize: 17),)
        ),
      ),
    );
  }
}
