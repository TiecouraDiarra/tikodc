

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tikodc/Connect/connect.dart';
import 'package:tikodc/accueil/homepage.dart';
import 'package:tikodc/connexion/connexion.dart';

class splashScreem extends StatefulWidget {
  const splashScreem({Key? key}) : super(key: key);

  @override
  State<splashScreem> createState() => _splashScreemState();
}

class _splashScreemState extends State<splashScreem> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.black,
          size: 80.0,
        ),
      ),
    );
  }
}
