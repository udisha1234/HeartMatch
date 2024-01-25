
import 'package:flutter/material.dart';
import 'package:heartmatch/pages/Home.dart';
import 'package:heartmatch/utils/image.dart';
import 'package:heartmatch/utils/info.dart';

class Zodiac_Signs extends StatefulWidget {
  const Zodiac_Signs({super.key});

  @override
  State<Zodiac_Signs> createState() => _Zodiac_SignsState();
}

class _Zodiac_SignsState extends State<Zodiac_Signs> {

  String zodiac = '';


whenpressed(txt){
  setState(() {
    info.Sign1=txt;
    // zodiac = txt ;
  });
}

Widget sign(String txt , String imgurl , String txt2){
  var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: () {

      whenpressed(txt);
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => Home()),);
    },
    child: Container(
      // padding: EdgeInsets.all(2),
      height: h*0.225,width: w*0.33,
      // color: AppColors.blue1,
      child: Column(children: [
        Container(height: h*0.15,width: 90,
        decoration: BoxDecoration(
          // color: AppColors.dp2,
          image: DecorationImage(
            image: AssetImage(imgurl ),)
            ),
        ),
        Container(
          height: h*0.06,
          width: w*0.4,
          child: 
        Center(child:
        Container(
          height: h*0.04,
          child: ListTile(title: Center(child: Text(txt)), 
          subtitle: Text(txt2 , style: TextStyle(fontSize: 11),),),
        )
        //  Text(txt)
         ),
        )
      ]),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('ZODIC SIGNS '),),
      body: SingleChildScrollView(
        child: Column(children:[
          Row(children: [
            sign('Capricon', images.Zodi8, 'Dec 22 - Jan 19'),
            sign('Aquarius', images.Zodi11, 'Jan 20 - Feb 18'),
            sign('Pisces', images.Zodi12, 'Feb 20 - Mar 20'),
            ],
          ),
          Row(children: [
            sign('Aries', images.Zodi1 , 'Mar 21 - Apr 20'),
            sign('Taurus', images.Zodi2 , 'Apr 21 - May 20'),
            sign('Gemini', images.Zodi3 , 'May 21 - Jun 21'),
            ],
          ),
          Row(children: [
            sign('Cancer', images.Zodi9, 'Jun 22 - Jul 23'),
            sign('Leo', images.Zodi4, 'July 23 - Aug 22'),
            sign('Virgo', images.Zodi5, 'Aug 23 - Sept 22'),
          ],
          ),
          Row(children: [
            sign('Libra', images.Zodi6, 'Sept 23 - Oct 22'),
            sign('Scorpio', images.Zodi10, 'Oct 23 - Nov 22'),
            sign('Sagittarius', images.Zodi7, 'Nov 22 - Dec 21'),
          ],
          ),
          ]
        ),
      )
    );
  }
}