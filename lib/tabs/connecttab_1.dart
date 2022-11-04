import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ThirdTab extends StatelessWidget {
  //const ThirdTab({Key? key}) : super(key: key);

  final _textConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            IntlPhoneField(
              controller: _textConroller,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                hintText: 'Numèro de téléphone',
                //labelText: 'Numèro de téléphone',
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
              dropdownTextStyle: TextStyle(
                  color: Colors.black
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
                print(phone.countryCode);
                print(phone.number);
              },
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300.0,
              height: 40,
              child: Builder(
                builder: (context) => RaisedButton(
                  onPressed: () =>{
                    /*Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const InscTelMail(),
                      ),
                    ),*/
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Envoyer un code"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
