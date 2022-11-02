import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/util/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      nomUtilisateur:'ramdomUser8',
      videoDescription:'flutter video',
      nombreLike:'3.4M',
      nombreCommentaire:'355',
      nombrePartage:'224',
      utilisateurPost: Container(
        color: Colors.blue[300],
      ),
    );
  }
}
