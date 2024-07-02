import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final txtUser = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Introduce el usuario',
        icon: Icon(Icons.person)
      ),
    );

    final txtPwd = TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Introduce el password',
        icon: Icon(Icons.password)
      ),
    );

    final ltvLogin = Positioned(
      bottom: 100,
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        //margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            txtUser,
            txtPwd
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.white
            ]
          )
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ltvLogin
          ],
        ),
      ),
    );
  }
}