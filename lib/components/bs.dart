

import 'package:flutter/material.dart';
import 'package:heartmatch/utils/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              elevation: 20,
              backgroundColor: AppColors.blue1,
              isScrollControlled: true,
              isDismissible: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              context: context, builder: (context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                  ListTile(
                    title: Text('  Title  '),
                    subtitle: Text('   Subtitle  '),
                  ),
                ],);
              });
          }
          , 
        child: Text('Press me')),
      ),
    );
  }
}