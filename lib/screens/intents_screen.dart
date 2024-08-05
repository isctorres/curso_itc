import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          intentCard(title: 'https://itcelaya.edu.mx',color: Colors.green,image: 'assets/logo.png',event: openWeb),
          intentCard(title: 'tel:4612279093',color: Colors.blueAccent,image: 'assets/logo.png', event: callPhone),
          intentCard(title: 'sms:4612279093',color: Colors.orange,image: 'assets/logo.png', event: sendSMS),
          intentCard(title: 'ruben.torres@itcelaya.edu.mx',color: Colors.purpleAccent,image: 'assets/logo.png', event: sendEmail),
        ],
      ),
    );
  }

  Widget intentCard({
    required String title, 
    required String image, 
    required Color color,
    required Function() event}){
    return GestureDetector(
      onTap: event,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:color 
        ),
        child: Column(
          children: [
            Image.asset(image,height: 130,),
            Text(title,)
          ],
        ),
      ),
    );
  }

  Future<void> openWeb() async{
    var uri = Uri.parse('google.com.mx');
    if( await canLaunchUrl(uri) ){
      await launchUrl(uri);
    }
  }

  Future<void> callPhone() async{
    var uri = Uri.parse('tel:4612279093');
    if( await canLaunchUrl(uri) ){
      await launchUrl(uri);
    }
  }

  Future<void> sendSMS() async{
    var uri = Uri.parse('sms:4612279093');
    if( await canLaunchUrl(uri) ){
      await launchUrl(uri);
    }
  }

  Future<void> sendEmail() async {
    Uri uri = Uri(
      scheme: 'mailto',
      path: 'isctorres@gmail.com',
      query: 'subject=Hola Mundo! :)&body=Vamonos a los tacos :)'
    );

    if( await canLaunchUrl(uri) ){
      launchUrl(uri);
    }
  }
}