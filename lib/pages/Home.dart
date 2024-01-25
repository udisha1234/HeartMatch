
import 'package:dart_sentiment/dart_sentiment.dart';
import 'package:flutter/material.dart';
import 'package:heartmatch/pages/result.dart';
import 'package:heartmatch/pages/zodiacsign2.dart';
import 'package:heartmatch/pages/zodiacsigns.dart';
import 'package:heartmatch/utils/colors.dart';
import 'package:heartmatch/utils/image.dart';
import 'package:heartmatch/utils/info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartmatch/utils/sign_match.dart';

class modifiedText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const modifiedText(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color , fontSize: size , fontWeight: FontWeight.w500)
    );
  }
}

class modifiedTextlato extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const modifiedTextlato(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color:  color, fontSize: size)
      //  GoogleFonts.lato(color: color, fontSize: size),
    );
  }
}

class boldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const boldText(
      {Key? key, 
      required this.text, 
      required this.size, 
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color , fontSize: size , 
      fontWeight: FontWeight.bold)
      //  GoogleFonts.acme(
      //     color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class boldTextlato extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const boldTextlato(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color ,fontSize: size , fontWeight: FontWeight.bold)
    );
  }
}

class Home extends StatefulWidget {

   Home( 
    {Key ? key , 
    }
   ):
   super(key : key);
    

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TextEditingController zodiac1TEC = TextEditingController();
  // TextEditingController zodiac2TEC = TextEditingController();

  TextEditingController name1Controller = TextEditingController();
  TextEditingController name2Controller = TextEditingController();

  TextEditingController thought1 = TextEditingController();
  TextEditingController thought2 = TextEditingController();


  String result = '';
  String equation = '';
  String imgurl = '';
  String name1 = '';
  String name2 = '';
  // String tho1 = '';
  // String tho2 = '';
  // String sign1 = '*Refresh ';
  // String sign2 = '*Refresh';



whenpressed (result){
  setState(() {
    if(result == 'Friendship'){
      imgurl = images.F;
    }
    else if (result == 'Love'){
      imgurl = images.L;
    }
    else if(result == 'Affection'){
      imgurl = images.A;
    }
    else if ( result == 'Marriage'){
      imgurl = images.M;
    }
    else if (result == 'Enemy'){
      imgurl = images.E;
    }
    else if (result == 'Soulmate'){
      imgurl = images.S;
    }

    // tho1 = thought1.text;
    // tho2 = thought2.text;
    name1= name1Controller.text;
    name2= name2Controller.text;

  });
}

whenMatch (){
  setState(() {
    for(int i = 0 ;i < 12 ; i++){
      if(info.Sign2 == best[info.Sign1][i]){
        info.match = 'Made for Each Other' ;
      }
      else if(info.Sign2 == worst[info.Sign1]![i]){
        info.match = 'Not a Favourable Match' ;
      }
      else if(info.Sign2 == fav[info.Sign1]![i]){
        info.match = 'Favourble Match';
      }
    } 
  });
}


Widget signs (){
  return Container();
}

Widget img(){
  var h = MediaQuery.of(context).size.height;
  // String z1= sign1;
    return Container(
                      foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                       begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        ),
                      ),
                      height: h*0.66,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: 
                        AssetImage(imgurl)
                         , filterQuality: FilterQuality.high
                        )
                        ),
                    );
}


Widget response (String result){
  return Row(
    children: [
      
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      
      backgroundColor: AppColors.def,
      appBar: AppBar(
        centerTitle: true,

      backgroundColor: AppColors.def,
      title:
      Container(
        child: boldText(text: "Find Who's Your Love", size: 24, color: AppColors.red4)
    )
      
    ),

    body: 
    SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: h*0.2,
          ),
      
      
          Container(
            height: h*0.066,
            width: w*0.84,
            decoration: BoxDecoration
            (
              color: AppColors.def,
              borderRadius: BorderRadius.all(Radius.circular(6))),
            margin: EdgeInsets.symmetric(vertical: 2),
            
            child: TextField(
              onChanged: (value) {
                setState(() {
                  info.name_she = name1Controller.text;
                  calculateFlamesCompatibility();
                });
              },
              cursorColor: AppColors.def,
                  controller: name1Controller,
                  decoration: InputDecoration(
                    hintText: info.name_she,
                    ),
                ),
          ),
      
          Container(
            margin: EdgeInsets.symmetric(vertical: h*0.01),
            height: h*0.066,
            width: w*0.84,
            decoration: BoxDecoration(
              color: AppColors.def,
              borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  info.how_she= thought1.text;
                });
              },
              controller: thought1,
              cursorColor: AppColors.pink3,
                  // controller: name1Controller,
                  decoration:
                  InputDecoration(
                    hintText: info.how_she,
                    ),
                ),
          ),
      
          Column(
            children: [
              Row(
                children: [
                  Container(width: w*0.06 ),
      
                  Column(
                    children: [
                      Container(
                        margin:EdgeInsets.symmetric(horizontal: h*0.015, vertical: h*0.025),
                        height: h*0.04,
                        width: w*0.65,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(6))),
                          child: InkWell(
                            child: Container(
                              child: Text( "Zodiac Sign : "+ info.Sign1 ,
                              style: TextStyle(
                                fontWeight: FontWeight.w500, 
                                fontSize: 16, color: AppColors.text1),
                              ),
                            ),
                          ),
                             ),
                    ],
                  ),
                         ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              CircleBorder(side: BorderSide(width: 0.01))
                              ),
                            iconColor: MaterialStatePropertyAll(AppColors.def),
                            backgroundColor: MaterialStatePropertyAll(AppColors.red4)
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Zodiac_Signs()),);
                          }, child:
                         Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.youtube_searched_for_rounded),
                         ) 
                         ),
                ],
              )
            ],
          ),
      
          
      
          // Divider(),
      
          Container(
            height: h*0.066,
            width: w*0.84,
            decoration: BoxDecoration(
              color: AppColors.def,
              borderRadius: BorderRadius.all(Radius.circular(6))),
            margin: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      info.name_he = name2Controller.text;
                      calculateFlamesCompatibility();
                    });
                  },
                  cursorColor: AppColors.pink3,
                  controller: name2Controller,
                  decoration: InputDecoration(
                    hintText: info.name_he,
                    ),
                ),
              ),
      
          Container(
            height: h*0.066,
            width: w*0.84,
            decoration: BoxDecoration(
              color: AppColors.def,
              borderRadius: BorderRadius.all(Radius.circular(6))),
            margin: EdgeInsets.symmetric(horizontal: 8 , vertical: 4),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  info.how_he = thought2.text;
                });
              },
              controller: thought2,
              cursorColor: AppColors.pink3,
                  decoration:
                  InputDecoration(
      
                    hintText: info.how_he,
                    ),
                ),
          ),
      
          Column(
            children: [
              Row(
                children: [
                  Container(width: w*0.06 ),
      
                  Column(
                    children: [
                      Container(
                        margin:EdgeInsets.symmetric(horizontal: h*0.015, vertical: h*0.025),
                        // padding: EdgeInsets.symmetric(horizontal: 27),
                        height: h*0.04,
                        width: w*0.65,
                        decoration: BoxDecoration(
                        // color: AppColors.blue1,
                         borderRadius: BorderRadius.all(Radius.circular(6))),
                          // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          child: InkWell(
                            child: Container(
                              child: Text( "Zodiac Sign : "+ info.Sign2 ,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16, color: AppColors.text1),
                              ),
                            ),
                          ),
                             ),
                    ],
                  ),
                         ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              CircleBorder(side: BorderSide(width: 0.01))
                              ),
                            iconColor: MaterialStatePropertyAll(AppColors.def),
                            backgroundColor: MaterialStatePropertyAll(AppColors.red4)
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                             Zodiac_Signs2()),);
                          }, child:
                         Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.youtube_searched_for_rounded),
                         ) 
                         ),
                ],
              )
            ],
          ),
          Container(
            height: 20,
          ),
      
      
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:MaterialStatePropertyAll(AppColors.red4),
              ),
                onPressed: () {
                  calculateFlamesCompatibility();
                  calculateCompatibility();
                  whenMatch();
                  whenpressed(result);
                  // sentimen();
                  showModalBottomSheet(
                elevation: 20,
                backgroundColor: AppColors.def,
                isScrollControlled: true,
                isDismissible: true,
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                context: context, builder: (context){
                  return 
                  
                   Stack(
                     children: [
                      img(),
                       Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
      
                          Container(
                            height: h*0.4,

                          ),
                        ListTile(
                          title: Text('Result : ',style: TextStyle(color: AppColors.def , fontSize: 18, fontWeight: FontWeight.w700),),
                          // subtitle: Text(zodiac1TEC.text , style: TextStyle(color: AppColors.def),),
                        ),
                       
                          ListTile(
                          title: boldText(text: 'Your Compatibility : ',color: AppColors.def,size: 20,),
                          subtitle: Text(" '$result' "  ,style: TextStyle(
                            color: AppColors.red4,
                            fontSize: 26,
                            fontWeight: FontWeight.w700
                          )),
                        ),

                        ElevatedButton(
                          onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => 
                          Result_Page(
                            // name1: name1,
                            // name2: name2,
                            imgurl: imgurl,
                            result: result,
                            // sign1: sign1,
                            // sign2: sign2,
                            // thought1: tho1,
                            // thought2: tho2,
                          )),
                          );
                        },
                        
                         child: 
                        Text(' View Detailed Analysis ')
                        ),
                       
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          height: 20,
                          child: modifiedText(text: 'Thank you for using flamegame ', 
                          color: Colors.black,
                          size: 15,
                          ),
                          ),
                          Container(height: 5,)
                                       ],),
                     ],
                   );
                });
      
                },
                child: Container(
                  width: w*0.78,
                  height: 34,
                  child: 
                  Center(child: Text('Calculate Compatibility' ,
                            style: TextStyle(color: AppColors.def , fontSize: 15),)
                  ),
                ),
              ),
      
              Container(
                height: 5,
              ),
      
        ],
      
      ),
    ),
    );
  }

void calculateCompatibility() {
  setState(() {
    info.percen = ((info.name_he.hashCode + info.name_she.hashCode) % 101).toString();
  });
  // var 
  // return
  //  (sign1.hashCode + sign2.hashCode) % 101;
}


    void calculateFlamesCompatibility() {
      String name1 = info.name_she.toLowerCase().trim();
      String name2 = info.name_he.toLowerCase().trim();
    // String name1 = name1Controller.text.toLowerCase();
    // String name2 = name2Controller.text.toLowerCase();

    // Remove spaces and find the common characters
    for (int i = 0; i < name1.length; i++) {
      for (int j = 0; j < name2.length; j++) {
        if (name1[i] == name2[j]) {
          name1 = name1.replaceFirst(name1[i], '');
          name2 = name2.replaceFirst(name2[j], '');
        }
      }
    }

    // Calculate the length of the remaining characters
    int remainingLength = name1.length + name2.length;

    // Define the FLAMES relationship mapping
    List<String> flames = ['Friendship', 'Love', 'Affection', 'Marriage', 'Enemy', 'Soulmate'];

    // Calculate the Flames result
    while (flames.length > 1) {
      int removeIndex = remainingLength % flames.length - 1;
      if (removeIndex < 0) {
        removeIndex = flames.length - 1;
      }
      flames.removeAt(removeIndex);
    }


    setState(() {
      result = flames[0];
    });
  }

 

}

void CompPer(name1 , name2 , result ){
  String com = name1 + result + name2 ;
}



void sentimen() {
  final sentiment = Sentiment();

  print(sentiment.analysis(" She is pretty ")  );

  // print(sentiment.analysis(" She is pretty stupid", emoji: true));

  // print(sentiment.analysis(
  //   "I love cats, but I am allergic to them.",
  // ));

  // print(sentiment.analysis("J'adore les chats, mais j'y suis allergique.",
  //     languageCode: LanguageCode.french));

  // print(sentiment.analysis("Le gâteau qu'elle a fait était horrible 😐",
  //     emoji: true, languageCode: LanguageCode.french));
}

