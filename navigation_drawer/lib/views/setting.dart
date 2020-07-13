
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Setting Screen', style: TextStyle(color: Colors.red, fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
