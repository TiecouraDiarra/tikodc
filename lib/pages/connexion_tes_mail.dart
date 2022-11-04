import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/tabs/connecttab_1.dart';
import 'package:tikodc/tabs/connecttab_2.dart';

class ConnectTelMail extends StatelessWidget {
  const ConnectTelMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Connexion',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.help_outline_sharp, color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 20),
            TabBar(
              tabs: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Text("Téléphone", style: TextStyle( color: Colors.black, fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Text("E-mail/nom d'utilisateur", style: TextStyle( color: Colors.black, fontSize: 15)),
                ),
              ],
            ),
            Expanded(
                child: TabBarView(
                  children: [
                    ThirdTab(),
                    FourthTab(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
