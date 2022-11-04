import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ReinitNum extends StatelessWidget {
  //const ReinitNum({Key? key}) : super(key: key);

  final _textConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Réinitialiser',
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
            Row(
              children: [
                Text("Saisis ton numéro de téléphone", style: TextStyle(color: Colors.black, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Nous enverrons un code sur ton téléphone", style: TextStyle(color: Colors.black38, fontSize: 15)),
              ],
            ),
            SizedBox(height: 30),
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
                  icon: const Icon(Icons.clear, color: Colors.black),
                ),
              ),
              dropdownTextStyle: TextStyle(color: Colors.black),
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
                  onPressed: () => {
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
    );
  }
}
