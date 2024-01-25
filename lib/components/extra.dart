import 'package:flutter/material.dart';
import 'package:heartmatch/components/extra_two.dart';
import 'package:heartmatch/pages/result.dart';
import 'package:heartmatch/utils/colors.dart';
import 'package:heartmatch/utils/image.dart';
import 'package:google_fonts/google_fonts.dart';

class Test_it extends StatefulWidget {
  const Test_it({super.key});

  @override
  State<Test_it> createState() => _Test_itState();
}

class _Test_itState extends State<Test_it> {
  static String val = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.dp2,
      child: Wrap(
        children: [
          Container(height: 200, width: 170, color: AppColors.bg2,
          child: Text(val , style: TextStyle(fontSize: 20,color: AppColors.bg),),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                             Two()),);
              setState(() {
              images.val1 = 'Yesss';
              // val = 'Hello';
            });
            },
            child: Container(height: 200, width: 200, color: AppColors.pink2, child:Text(
  'This is Google Fonts',
  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 50)),
),
            //  Text('Hello' , style: 
            // TextStyle(fontSize: 50,color: AppColors.bg),
            )
            ,),
          Container(height: 200, width: 200, color: AppColors.random,),
          Container(height: 200, width: 200, color: AppColors.red3,),
        ],
      ),
      ),
    );
  }
}





class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  TextEditingController a = TextEditingController();  
  TextEditingController b = TextEditingController();
  String res = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 200,width: 300, color: AppColors.dp2,
            child: TextField(
              onChanged: (value) {
                calculateFlamesCompatibility(a.text, b.text);
              },
              controller: a),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,width: 300, color: AppColors.pink2,
            child: TextField(
              onChanged: (value) {
                calculateFlamesCompatibility(a.text, b.text);
              },
              controller: b),
            ),
            ElevatedButton(
              onPressed: (){
              setState(() {
                res = calculateFlamesCompatibility(a.text, b.text);
              });
            }, child: Text('Press')),
            Container(height: 100,width: 200,color: AppColors.blue1,
            child: Text(res , style: TextStyle(fontSize: 30),)
            )
          ],
        ),
      )),
    );
  }

String calculateFlamesCompatibility(String name1, String name2) {
    // Remove spaces and convert names to lowercase for case-insensitivity
    String processedName1 = name1.replaceAll(' ', '').toLowerCase();
    String processedName2 = name2.replaceAll(' ', '').toLowerCase();

    // Create a set of unique characters in both names
    Set<String> uniqueCharacters =
        Set.from(processedName1.split('') + processedName2.split(''));

    // Count the number of common characters
    int commonCharacterCount = 0;
    for (String character in uniqueCharacters) {
      if (processedName1.contains(character) &&
          processedName2.contains(character)) {
        commonCharacterCount++;
      }
    }

    // Determine the relationship status using the FLAMES algorithm
    String flamesResult = 'FLAMES';
    while (flamesResult.length > 1) {
      int removeIndex =
          (commonCharacterCount % flamesResult.length) - 1;
      if (removeIndex < 0) {
        removeIndex = flamesResult.length - 1;
      }
      flamesResult =
          flamesResult.substring(0, removeIndex) + flamesResult.substring(removeIndex + 1);
    }

    // Map the result to a relationship status
    Map<String, String> statusMap = {
      'F': 'Friends',
      'L': 'Lovers',
      'A': 'Affectionate',
      'M': 'Marriage',
      'E': 'Enemies',
      'S': 'Siblings',
    };

    return statusMap[flamesResult] ?? 'Unknown';
  }



}