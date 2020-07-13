
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.green,
          ),
          itemCount: 30,
          itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Setting $index", style: TextStyle(color: Colors.black, fontSize: 17),)
          ),
        ),
      ),
    );
  }
}
