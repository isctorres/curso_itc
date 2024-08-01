import 'package:flutter/material.dart';

class IntentsScreen extends StatelessWidget {
  const IntentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        )
      ),
    );
  }

  Widget intentCard(String title, String image, Color color){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color 
      ),
      child: Column(
        children: [
          Image.asset(image),
          Text(title)
        ],
      ),
    );
  }

}