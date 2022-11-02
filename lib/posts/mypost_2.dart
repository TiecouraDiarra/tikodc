import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/util/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      nomUtilisateur:'marytraore48',
      videoDescription:'video du jour',
      nombreLike:'1.3M',
      nombreCommentaire:'235',
      nombrePartage:'124',
      utilisateurPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}
