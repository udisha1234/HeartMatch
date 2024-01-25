
import 'package:flutter/material.dart';
import 'package:heartmatch/utils/colors.dart';

class appbar extends StatefulWidget {
  appbar({Key? key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [

      ],
      backgroundColor: AppColors.bg,
      title:
      Container(
        child: Row(children: [
          Text('FLAME',style: TextStyle(color: AppColors.red2 ),),
          Text('GAME',style: TextStyle(color: AppColors.pink1),)
      ]
      ),
    )
      
    );
  }
}