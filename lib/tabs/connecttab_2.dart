import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/reinitialiser/numero.dart';

class FourthTab extends StatelessWidget {
  //const FourthTab({Key? key}) : super(key: key);

  final _textConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textConroller,
              decoration: InputDecoration(
                hintText: "E-mail ou nom d'utilisateur",
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 3.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textConroller.clear();
                  },
                  icon: const Icon(Icons.clear,color: Colors.black),
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textConroller,
              decoration: InputDecoration(
                hintText: "Mot de passe",
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 3.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textConroller.clear();
                  },
                  icon: const Icon(Icons.clear,color: Colors.black),
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(

                            backgroundColor: Colors.white,
                            title: new Text("Réinitialiser le mot de passe avec : ", textAlign: TextAlign.center, style: TextStyle(color: Colors.black),),
                            actions: <Widget>[
                              new Row(
                                children: [
                                  FlatButton(
                                    child: new Text("Numèro de téléphone",textAlign: TextAlign.center , style: TextStyle(color: Colors.blue)),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => ReinitNum(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              new Row(
                                children: [
                                  FlatButton(
                                    child: new Text("E-mail", textAlign: TextAlign.center, style: TextStyle(color: Colors.blue)),
                                    onPressed: () {
                                    },
                                  ),
                                ],
                              ),
                              Center(
                                child: new Row(
                                  children: [
                                    FlatButton(
                                      child: new Text("Annuler", textAlign: TextAlign.center, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                    );
                  },
                  child: Text('Mot de passe oublié ? ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 300.0,
            height: 40,
            child: Builder(
              builder: (context) => RaisedButton(
                onPressed: () => {
                  /*Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const InscTelMail(),
                    ),
                  ),*/
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Connexion"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
