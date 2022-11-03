import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/pages/inscription_tel_mail.dart';

class inscription extends StatelessWidget {
  //DateTime? _chosenDateTime;
  const inscription({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: const Text('Inscription', style: TextStyle(color: Colors.black),),

      ),
      backgroundColor: Colors.white,

      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(height: 30),
                  Column(
                    children: [
                      Text("Quelle est ta date de \nnaissance ?", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Text("Ta date de naissance ne sera pas\n affichée publiquement.",style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  //SizedBox(width: 150),
                  Column(
                    children: [
                      Icon(
                          Icons.storefront_outlined,
                          color: Colors.blue,
                        size: 70,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100),
              SizedBox(
                width: 300.0,
                height: 40,
                child: Builder(
                  builder: (context) => RaisedButton(
                    onPressed: () =>{
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const InscTelMail(),
                        ),
                      ),
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Suivant"),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



