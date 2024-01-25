import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartmatch/pages/Home.dart';
import 'package:heartmatch/utils/colors.dart';
import 'package:heartmatch/utils/image.dart';
import 'package:heartmatch/utils/info.dart';
import 'package:heartmatch/utils/sign_match.dart';

class Result_Page extends StatefulWidget {

  String imgurl = '';
  String result ;
  // String thought1 = '';
  // String thought2 = '';
  // String sign1 = '';
  // String sign2 = ''; 
  // String name1 ='';
  // String name2 = '';
  // String percentage = '';

  Result_Page(
    {
      Key? key ,
    required this.result ,
    required this.imgurl,
    // required this.thought1,
    // required this.thought2,
    // required this.sign1,
    // required this.sign2,
    // required this.name1,
    // required this.name2,
    }
  ):
    super(key : key);

  @override
  State<Result_Page> createState() => _Result_PageState();
}

class _Result_PageState extends State<Result_Page> {

  
  @override
  Widget build(BuildContext context) {
    String resul = widget.result;
    String imgurl = widget.imgurl;
    // String tho1 = widget.thought1;
    // String tho2 = widget.thought2;
    // String sign1 = widget.sign1;
    // String sign2 = widget.sign2;
    // String name1 = widget.name1;
    // String name2 = widget.name2;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.def,
      appBar: AppBar(
        centerTitle: true,

      backgroundColor: AppColors.def,
      title: boldText(text: 'DetailedAnalysis', size: 26, color: AppColors.red4),
      
    ),


    body: Column(
      children: [
        Container(height: 5,width: double.infinity,),
        Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
                        height: h*0.6,
                        width: w*0.8,
                        decoration: BoxDecoration(
                         image: DecorationImage(image: 
                         AssetImage(imgurl)
                          , filterQuality: FilterQuality.high , 
                          fit: BoxFit.cover
                         )),
                      ),
                      Container(child: Text(info.name_he + " & " + info.name_she , style: TextStyle(fontSize: 25 , color: AppColors.red3),),),
                      Container(child: Text('   are related by the relation : ' , style: TextStyle(fontSize: 17),),),
                      Container(child: Text('$resul' ,style: TextStyle(color: AppColors.red3 , fontSize: 26), ),),
                      Container(child: Text('According to your Zodiac Signs :' , style: TextStyle(fontSize: 17),),),
                      Container(child: Text(info.Sign1+" + "+info.Sign2 , style: TextStyle(fontSize: 20 , color: AppColors.red3),),),
                      Container(child: Text(info.match , style: TextStyle(fontSize: 20),),)
                      // Container(child: ,),

                      // Container(child: Text(info.name_he + " and "+info.name_he+ " is related by the relation as : \n"+' $resul'),),
      ],
    )
    // Column(
    //   children: [
    //     Container(height: 5,width: double.infinity,),
    //     Row(
    //       children: [ 
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 4),
            //             height: h*0.4,
            //             width: w*0.7,
            //             decoration: BoxDecoration(
            //              image: DecorationImage(image: 
            //              AssetImage(imgurl)
            //               , filterQuality: FilterQuality.high , 
            //               fit: BoxFit.cover
            //              )),
            //           ),
                      
        
    //                     Stack(
    //                     children:[
    //                        Container(
    //                       height: h*0.4,
    //                       width: w*0.3,
    //                       color: AppColors.blue1,
    //                       child: Column(
    //                         children: [Container(
    //                           color: AppColors.pink1,
    //                         )
    //                         ],
    //                       ),
    //                     ),
    //                     Container(
    //                       height: h*0.054,
    //                       width: w*0.3,
    //                       // color: AppColors.dp,
    //                       child: 
    //                       Text(  images.val1
    //                         // "      " +resul +" :"
    //                         , style: TextStyle(fontSize: 25 , 
    //                       // color: AppColors.red4 ,
    //                        fontWeight: FontWeight.w800),),
    //                       ),
    //                     Positioned(
    //                       top: h*0.055,
    //                       child: Container(
    //                         height: 50,
    //                         width: w*0.54,
    //                         // color: AppColors.bg2,
    //                         child: 
    //                         modifiedText(text: 'Compatibility percentage in ' + resul +" :   " 
    //                         , size: 16, color: AppColors.bg)
    //                         // Text('Compatibility percentage in ' + resul),
    //                         )),
    //                         Positioned(
    //                           top: h*0.12,
    //                           child: Container(
    //                             height: 50,
    //                             width: w*0.54,
    //                             color: AppColors.pink3,
    //                           ),
    //                         ),
    //                     ]
    //                   )
                      
        
    //       ]
    //     ),
    //     Container(
    //       height: h*0.08,
    //       width: double.infinity,
    //       child: Card(color: AppColors.pink3,
    //       child: Text(info.match , style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 25)),),
    //       ),
    //     ),
    //     Container(
    //       height: h*0.12,
    //       width: double.infinity,
    //       child: Card(color: AppColors.pink1,),
    //     ),
    //     Container(
    //       height: h*0.08,
    //       width: double.infinity,
    //       child: Card(color: AppColors.pink2,),
    //     ),
    //     Row(
    //       children: [
    //         Container(
    //           height: h*0.2, width: w*0.50,
    //           child: Card(
    //           color: AppColors.blue1,
    //         ),),
    //         Container(
    //           height: h*0.2, width: w*0.50,
    //           child: Card(
    //           color: AppColors.blue1,
    //         ),)
    //       ],
    //     )
    //   ],
    // ),

    
    );
  }

   

}

