

import 'package:flutter/material.dart';
import 'package:heartmatch/utils/colors.dart';

class Zodiac extends StatefulWidget {
  const Zodiac({super.key});

  @override
  State<Zodiac> createState() => _ZodiacState();
}

class _ZodiacState extends State<Zodiac> {

  TextEditingController sing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
     String val= sing.text ;
       return Scaffold(
      body: 
      InkWell(
        onTap: () {
          showModalBottomSheet(context: context, builder: (context){
            return Column(
              children: [
                Row(
                  children: [
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink3,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink2,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink4,),

                  ],
                ),
                Row(
                  children: [
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink1,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink4,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink3,),

                  ],
                ),
                Row(
                  children: [
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink4,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink2,),
                    Container(height: h*0.2,width:w*0.3 , color: AppColors.pink1,),

                  ],
                ),
              ],
            );
          });
        },
        child: Center(
          child: Container(
            child: Card(
              child: Text('PRESS ME ', style: TextStyle(fontSize: 30),),
            ),
          ),
        ),
      )





      // Column(
      //   children: [
      //     Container(
      //       height: 100,
      //       width: 100,
      //       child: DropdownMenu(
      //         inputDecorationTheme: InputDecorationTheme(fillColor: AppColors.dp2),
      //         controller: sing,
      //         onSelected: (value) {
      //           setState(() {
      //             val = sing.toString();
      //           });
      //         },
      //         dropdownMenuEntries: [
                
      //           DropdownMenuEntry(
      //           value: " abcd", label: ' okay' , ) , 
      //           DropdownMenuEntry(value: '', label: '')
                
      //           ]
      //           ),
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: AppColors.pink1,
      //       child: Text(val , style: TextStyle(fontSize: 30),),
      //     ),
      //   ],
      // ),
      
    );
  }
}


