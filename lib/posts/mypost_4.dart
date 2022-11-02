import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/util/post_template.dart';

class MyPost4 extends StatelessWidget {
  const MyPost4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      nomUtilisateur:'test4',
      videoDescription:'Video tutoriel',
      nombreLike:'2.5k',
      nombreCommentaire:'1431',
      nombrePartage:'200',
      utilisateurPost: Container(
        color: Colors.green[300],
      ),
    );
  }
}
