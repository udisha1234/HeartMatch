

import 'package:flutter/material.dart';
import 'package:heartmatch/pages/Home.dart';
import 'package:heartmatch/utils/colors.dart';

class HomeHim extends StatefulWidget {
  const HomeHim({super.key});

  @override
  State<HomeHim> createState() => _HomeHimState();
}

class _HomeHimState extends State<HomeHim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue1,
      appBar: AppBar(
        centerTitle: true,
        title: modifiedText(text: 'FlameGame', size: 26, color: AppColors.bg),

      ),
      body: 
      //Container(color: AppColors.dp2,)
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal:15 , vertical: 1),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          height: 45,
          child: TextField(),),
          Container(
          margin: EdgeInsets.symmetric(horizontal:15, vertical: 1.5),
          color: AppColors.primary,
          height: 45,
          child: TextField(),),
          Container(
          margin: EdgeInsets.symmetric(horizontal:15, vertical: 1.5),
          color: AppColors.primary,
          height: 45,
          child: TextField(),),
          Container(
          margin: EdgeInsets.symmetric(horizontal:15, vertical: 1.5),
          color: AppColors.primary,
          height: 45,
          child: TextField(),),
          Container(
          margin: EdgeInsets.symmetric(horizontal:15, vertical: 1.5),
          color: AppColors.primary,
          height: 45,
          child: TextField(),),
          Container(
          margin: EdgeInsets.symmetric(horizontal:15, vertical: 1.5),
          color: AppColors.primary,
          height: 45,
          child: TextField(),),
      
          
      ],)
      ,
    );
  }
}