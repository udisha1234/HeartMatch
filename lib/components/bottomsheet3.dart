


import 'package:flutter/material.dart';

class Bottom_res extends StatefulWidget {
  final String result  ;
  final String imgurl ;
  const Bottom_res(
    {
      Key? key ,
      required this.result,
      required this.imgurl,
    }
    ): super(key: key);

  @override
  State<Bottom_res> createState() => _Bottom_resState();
}

class _Bottom_resState extends State<Bottom_res> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return 
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),

              child: Column(
                children: <Widget>[
                  // BottomSheetImage (imageurl: imgurl, title: '', )
                  Container(height: h*0.5,
                  width: w,
                  color: Colors.teal,
                  ),
                ],

              ),


    );
  }
}

// class BottomSheetImage extends StatelessWidget {
//   final String imageurl ;
//   final String title;
//   BottomSheetImage(
//       {Key? key, required this.imageurl, required this.title})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       child: Stack(children: [
//         Container(
//           foregroundDecoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.black, Colors.transparent],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//               image: DecorationImage(
//                   image: NetworkImage(imageurl), fit: BoxFit.cover)),
//         ),
//         Positioned(
//           bottom: 10,
//           child: Container(
//               padding: EdgeInsets.all(10),
//               width: 300,
//               child: boldText(text: title, size: 18, color: Colors.white)),
//         )
//       ]),
//     );
//   }
// }