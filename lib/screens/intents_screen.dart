import 'package:flutter/material.dart';

class IntentsScreen extends StatelessWidget {
  const IntentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        children: [
          intentCard(title: 'https://itcelaya.edu.mx',color: Colors.green,image: 'assets/logo.png'),
          intentCard(title: 'tel:4612279093',color: Colors.blueAccent,image: 'assets/logo.png'),
          intentCard(title: 'sms:4612279093',color: Colors.orange,image: 'assets/logo.png'),
          intentCard(title: 'ruben.torres@itcelaya.edu.mx',color: Colors.purpleAccent,image: 'assets/logo.png'),
        ],
      ),
    );
  }

  Widget intentCard({
    required String title, 
    required String image, 
    required Color color}){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color 
      ),
      child: Column(
        children: [
          Image.asset(image,height: 130,),
          Text(title)
        ],
      ),
    );
  }

}