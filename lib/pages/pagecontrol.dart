import 'package:flutter/material.dart';
import 'package:heartmatch/pages/Home.dart';
import 'package:heartmatch/pages/login.dart';
import 'package:heartmatch/utils/colors.dart';

class PageControl extends StatefulWidget {
  const PageControl({super.key});

  @override
  State<PageControl> createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // height: 500,
          // width: 400,
          // color: Colors.teal,
          children: [
            Row(children: [
              Container(
                // margin: EdgeInsets.all(2),
                child:
            InkWell(
              
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUp()),);
            },
            child: Center(
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: h*0.018),
                height: h,
                width: w,
                color: AppColors.pink1,
                child: 
                Image.asset('assets/Flamesimg.png', fit: BoxFit.cover,)
              ),
            ),
                      ),),
            
            ],)


            // Container(child:
            // InkWell(
              
            // onTap: (){
            //   Navigator.push(context,
            //   MaterialPageRoute(builder: (context) => const Home()),);
            // },
            // child: Center(
            //   child: Container(
            //     height: h*0.99,
            //     width: w*0.99,
            //     color: Colors.white10,
            //     child: Image.network('https://m.media-amazon.com/images/M/MV5BMGIzZmQ4YmUtZGQ4NC00OTkyLWE1MGUtMTQ3N2Y3N2E2NWEyXkEyXkFqcGdeQXVyODAzNzAwOTU@._V1_FMjpg_UX1000_.jpg',fit: BoxFit.contain),
            //   ),
            // ),
            //           ),)
                      ]
        ),
      ),
    );
  }
}