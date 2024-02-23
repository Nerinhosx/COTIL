// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        SizedBox(child:
          Image.asset('assets/images/bird.jpg'),
          height: 180,
        ),
      ),
    );
  }
}