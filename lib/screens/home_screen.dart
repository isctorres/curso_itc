import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curso/screens/begin_screen.dart';
import 'package:curso/screens/intents_screen.dart';
import 'package:curso/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Control'),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Intenciones'),
          TabItem(icon: Icons.people, title: 'Perfil')
        ],
        onTap: (int i){
          index = i;
          setState(() {});
        },
      ),
      body: Builder(builder: (context) {
        switch (index) {
          case 0: return BeginScreen();
          case 1: return IntentsScreen();
          case 2: return ProfileScreen();
          default: return BeginScreen();
        }
      },),
      
      /*index == 0  
        ? BeginScreen() 
        : index == 1 
          ? IntentsScreen() 
          : ProfileScreen(), */
      endDrawer: Drawer(),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
              accountName: Text('Rubensin Torres Frias'), 
              accountEmail: Text('ruben.torres@itcelaya.edu.mx')
            ),
            ListTile(
              title: Text('Practica 1'),
              subtitle: Text('Descripcion de la app'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Salir'),
              subtitle: Text('Bye :)'),
              onTap: ()=>Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}