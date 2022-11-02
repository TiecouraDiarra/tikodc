import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/util/button.dart';

class PostTemplate extends StatelessWidget {
  //const PostTemplate({Key? key}) : super(key: key);

  final String nomUtilisateur;
  final String videoDescription;
  final String nombreLike;
  final String nombreCommentaire;
  final String nombrePartage;
  final utilisateurPost;

  PostTemplate({
   required this.nomUtilisateur,
   required this.videoDescription,
   required this.nombreLike,
   required this.nombreCommentaire,
   required this.nombrePartage,
   required this.utilisateurPost
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          utilisateurPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@ '+ nomUtilisateur,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text: videoDescription,style: TextStyle(
                            color: Colors.white
                        )),
                        TextSpan(
                            text: '#dev #flutter #odc',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ))
                      ]))
                ],
              ),
            ),
          ),
          //Bouton

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                      icon:Icons.favorite,
                      number: nombreLike
                  ),
                  MyButton(
                      icon:Icons.chat_bubble_outline,
                      number: nombreCommentaire
                  ),
                  MyButton(
                      icon:Icons.send,
                      number: nombrePartage
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
