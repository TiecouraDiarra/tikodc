import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class connect extends StatelessWidget {
  const connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TikTok",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Profil",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Sign up for an account",
                style: TextStyle(color: Colors.black87),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => RaisedButton(
                      onPressed: () =>{
                        _openPopup(context)
                      },
                    color: Colors.red[400],
                    textColor: Colors.white,
                    child: Text("Connecte-toi ou inscris-toi"),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//POPUP D'INSCRIPTION
void _openPopup(context){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
          height: MediaQuery.of(context).size.height * .95,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(onTap: () => Navigator.pop(context),
                        child: Icon(Icons.close),
                      ),
                      Icon(Icons.more),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Inscription à TikTok",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
                    child: Text(
                      "Crée un profif, abonne-toi à d’autres comptes, "
                      "crée tes propres vidéos et bien plus encore.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                            width: 0.5
                          )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                  child: Text(
                                      "Utiliser téléphone/e-mail/nom d’utilisateur",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      onPressed: () => {},
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey,
                              width: 0.5
                          )
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Facebook",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      onPressed: () => {},
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey,
                              width: 0.5
                          )
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                  FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Google",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      onPressed: () => {},
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey,
                              width: 0.5
                          )
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                color: Colors.lightBlue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Twitter",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      onPressed: () => {},
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey,
                              width: 0.5
                          )
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Continuer avec Instagram",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 90.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Tu as déjà un compte ? ",
                      style: TextStyle( color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Connexion ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _openPopupConnect(context);
                              },
                            style: TextStyle(
                              color: Colors.red,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        );
      }
  );
}

//POPUP DE CONNEXION
void _openPopupConnect(context){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
            height: MediaQuery.of(context).size.height * .95,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close),
                        ),
                        Icon(Icons.more),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Connecte-toi à TikTok",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
                      child: Text(
                        "Gère ton compte, consulte les notifications, "
                          "commente des vidéos et bien plus encore.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                    FontAwesomeIcons.user
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Utiliser téléphone/e-mail/nom d’utilisateur",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Facebook",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Google",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Twitter",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Instagram",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 90.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Tu n'as pas de compte ? ",
                        style: TextStyle( color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Inscription ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _openPopup(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        );
      }
  );
}

