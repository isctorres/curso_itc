import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isLoading = false;
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

    final btnEmail = Positioned(
      bottom: 100,
      child: SocialLoginButton(
        buttonType: SocialLoginButtonType.generalLogin, 
        text: 'Validar usuario',
        onPressed: (){
          isLoading = true;
          setState(() {});
          Future.delayed(Duration(seconds: 3))
          .then((value) => Navigator.pushNamed(context, '/home'));
          //Navigator.pushNamed(context, '/home');
        }
      ),
    );

    final logoTec = Positioned(
      top: 200,
      child: Image.asset('assets/logo.png', height: 200,)
    );

    final ltvLogin = Positioned(
      bottom: 200,
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        //margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,//Colors.black.withOpacity(.5),
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            txtUser,
            txtPwd,
            isLoading ? CircularProgressIndicator() : Container()
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
            ltvLogin,
            btnEmail,
            logoTec,
          ],
        ),
      ),
    );
  }
}