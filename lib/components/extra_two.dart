import 'package:flutter/material.dart';
import 'package:heartmatch/utils/colors.dart';
import 'package:heartmatch/utils/image.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100, width: 100, color: AppColors.dp2,),
          Container(height: 500, width: 500, color: AppColors.pink1, child: Text(images.val1 , style: TextStyle(fontSize: 50),),)
        ],
      ),
      
    );
  }
}