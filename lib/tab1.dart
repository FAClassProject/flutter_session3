import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1Layout extends StatelessWidget {
  const Tab1Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Tab1", style: TextStyle(fontSize: 45),),),
    );
  }
}
