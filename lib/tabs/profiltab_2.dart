import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SecondTab extends StatelessWidget {
  //const SecondTab({Key? key}) : super(key: key);

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
                hintText: "Adresse e-mail",
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
          SizedBox(height: 10),
          chec(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: RichText(
              text: TextSpan(
                text: "En continuant, tu acceptes les ",
                style: TextStyle(color: Colors.black38, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Conditions d’utilisation',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(text: " de TikTok et confirmes avoir lu les "),
                  TextSpan(
                      text: 'Politiques de confidentialité ',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(text: " de TikTok."),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
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
                child: Text("Suivant"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class chec extends StatefulWidget {
  const chec({Key? key}) : super(key: key);

  @override
  State<chec> createState() => _checState();
}

class _checState extends State<chec> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.red,
                value: isChecked,
                shape: CircleBorder(),
                side: BorderSide(color: Colors.black38),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "Reçois du contenu tendance, des newsletters, des \n"
                "promotions, des recommandations et des mises à \n"
                "jour du compte par e-mail.",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
              SizedBox(height: 20),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
