import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/util/button.dart';
import 'package:tikodc/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        nomUtilisateur:'tiec_diarra70',
        videoDescription:'video tikodc exemple',
        nombreLike:'2.4M',
        nombreCommentaire:'4500',
        nombrePartage:'234',
        utilisateurPost: Container(
          color: Colors.deepPurple[300],
        ),
    );
  }
}
