import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/pages/accueil.dart';
import 'package:tikodc/pages/message.dart';
import 'package:tikodc/pages/plus.dart';
import 'package:tikodc/pages/profil.dart';
import 'package:tikodc/pages/rechercher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages=[
    UserHomePage(),
    UserRecherchePage(),
    UserPlusPage(),
    UserMessagePage(),
    UserProfilPage(),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.flash_on_outlined), label: "Now"),
          BottomNavigationBarItem(icon: Image.asset('assets/images/tiktok_add.png', height: 25,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Boite de réception"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
