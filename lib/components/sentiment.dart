

import 'package:dart_sentiment/dart_sentiment.dart';
import 'package:flutter/material.dart';
import 'package:heartmatch/utils/colors.dart';

class Senti extends StatefulWidget {
  const Senti({super.key});

whenpress(){
  
}

  @override
  State<Senti> createState() => _SentiState();
}

class _SentiState extends State<Senti> {
  String score='She is very gorgeous';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 400,
        color: AppColors.dp2,
        child: ElevatedButton(onPressed: () {
          sentimen(score);
        }, child: Text('Press me'))
      ),
    
    );
  }
}


void sentimen(score) {

  final sentiment = Sentiment();


  print(sentiment.analysis(score));

//   print(sentiment.analysis(" She is pretty stupid", emoji: true));

//   print(sentiment.analysis(
//     "I love cats, but I am allergic to them.",
//   ));
}
