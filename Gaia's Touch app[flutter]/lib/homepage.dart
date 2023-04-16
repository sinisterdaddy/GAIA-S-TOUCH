import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList=[
    "assets/image 1.png",
    "assets/image 2.png",
    "assets/image 3.png",
    "assets/image 4.png",
    "assets/image 5.png",
    "assets/image 6.png",
    "assets/image 7.png",
    "assets/image 8.png",
    "assets/image 9.png",
    "assets/image 10.png",
    "assets/image 11.png",
    "assets/image 12.png",
    "assets/image 13.png",
    "assets/image 14.png",
    "assets/image 15.png",
    "assets/image 16.png",
    "assets/image 17.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(width: 3),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("GAIA'S TOUCH",style: TextStyle(fontFamily: 'Habibi'),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SELECT YOUR TARGETED GOAL',style: TextStyle(fontFamily: 'InterBlack',color: Colors.lightBlueAccent,fontSize: 30),),
            ),
           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InkWell(
                   child: Image(image: AssetImage(imageList[0]),height: 90,),
                 onTap: (){
                     openDialog1();
                 },
               ),
               InkWell(
                   child: Image(image: AssetImage(imageList[1]),height: 90,),
                 onTap: (){
                   openDialog2();
                 },
               ),
               InkWell(
                 child: Image(image: AssetImage(imageList[2]),height: 90,),
                 onTap: (){
                   openDialog3();
                 },
               ),
             ],
           ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Image(image: AssetImage(imageList[3]),height: 90,),
                  onTap: (){
                    openDialog4();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[4]),height: 90,),
                  onTap: (){
                    openDialog5();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[5]),height: 90,),
                  onTap: (){
                    openDialog6();
                  },
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Image(image: AssetImage(imageList[6]),height: 90,),
                  onTap: (){
                    openDialog7();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[7]),height: 90,),
                  onTap: (){
                    openDialog8();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[8]),height: 90,),
                  onTap: (){
                    openDialog9();
                  },
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Image(image: AssetImage(imageList[9]),height: 90,),
                  onTap: (){
                    openDialog10();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[10]),height: 90,),
                  onTap: (){
                    openDialog11();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[11]),height: 90,),
                  onTap: (){
                    openDialog12();
                  },
                ),
              ],

            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Image(image: AssetImage(imageList[12]),height: 90,),
                  onTap: (){
                    openDialog13();
                  },
                ),                InkWell(
                  child: Image(image: AssetImage(imageList[13]),height: 90,),
                  onTap: (){
                    openDialog14();
                  },
                ),                InkWell(
                  child: Image(image: AssetImage(imageList[14]),height: 90,),
                  onTap: (){
                    openDialog15();
                  },
                ),
              ],
            ),
            SizedBox(height: 15,),
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Image(image: AssetImage(imageList[15]),height: 90,),
                  onTap: (){
                    openDialog16();
                  },
                ),
                InkWell(
                  child: Image(image: AssetImage(imageList[16]),height: 90,),
                  onTap: (){
                    openDialog17();
                  },
                ),
              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
  Future openDialog1() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('1. NO POVERTY',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.redAccent,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'ActionAid', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'CARE', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Oxfam', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Save the Children', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Smile Foundation', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
          ],
      ),
    ),
  ));
  Future openDialog2() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('2. ZERO HUNGER',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.amber.shade700,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'AP Foundation', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Goonj', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'ANNM Foun.', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Food Bank India', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
            SizedBox(
              width: double.infinity,
              child: RoundedButtonWidget(buttonText: 'Feeding India ', width: double.infinity, onpressed: (){},onpressed2: (){},),
            ),
          ],
      ),
    ),
  ));
  Future openDialog3() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('3. GOOD HEALTH & WELL-BEING',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.green,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'BnM Foun.', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Smile Foundation', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'AP Foundation ', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'PE Foundation', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'SankaraEye Foun.', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog4() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('4. QUALITY EDUCATION',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.red.shade800,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Teach For India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'PE Foun. ', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Akanksha Found.', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'RTR India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Bhumi', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog5() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('5. GENDER EQUALITY',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.orange.shade600,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'BT India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Oxfam India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CREA', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CARE India ', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Jagori', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog6() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('6. CLEAN WATER & SANITATION',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.lightBlueAccent,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WaterAid India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WASH United ', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Water.org', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Gram Vikas', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Sulabh', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog7() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('7. AFFORDABLE & CLEAN ENERGY',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.amber,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'TERI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CEEW', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'PEG', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'SELCO', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Vasudha', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog8() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('8. DECENT WORK & ECONOMIC GROWTH',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.red.shade900,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'SEWA', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Pradan', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'GRAVIS', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CEC', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'ASA', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog9() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('9. INDUSTRY, INNOVATION & INFRASTRUCTURE',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.orange.shade700,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'ISABP', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CSE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CII', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'TERI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'DEG', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog10() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('10. REDUCED INEQUALITIES',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.pink,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Oxfam India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'ActionAid India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Save the Children', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CRY', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'PE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog11() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('11. SUSTAINABLE CITIES & COMMUNITIES',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.amber.shade500,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'TERI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CSE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Clean Air Asia', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'IIHS', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WRI India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog12() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('12. RESPONSIBLE CONSUMPTION & PRODUCTION',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.amber.shade500,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CSE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Toxics Link', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'IPCA', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WCSI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'TERI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog13() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('13. CLIMATE ACTION',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.green.shade900,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'THE CGI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CSE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WWF', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Greenpeace India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'IYCN', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog14() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('14. LIFE BELOW WATER',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.blue.shade700,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'The Nature', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WWF', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WTI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'RWMC', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'OCI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog15() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('15. LIFE ON LAND',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.lightGreen,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WWF', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WTI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Greenpeace India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'WCS', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CSE', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog17() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('17. PARTNERSHIPS FOR THE GOALS',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.deepPurple.shade900,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Social Justice', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'HRLN', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Navsarjan Trust', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: "People's Watch", width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CHRI', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
  Future openDialog16() => showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('16. PEACE, JUSTICE AND STRONG INSTITUTIONS',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack'),),
    backgroundColor: Colors.blue.shade900,
    content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'CRY', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Oxfam India', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'Save the Children', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'APF', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
          SizedBox(
            width: double.infinity,
            child: RoundedButtonWidget(buttonText: 'PEF', width: double.infinity, onpressed: (){},onpressed2: (){},),
          ),
        ],
      ),
    ),
  ));
}
class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;
  final Function onpressed2;

  RoundedButtonWidget({
    required this.buttonText,
    required this.width,
    required this.onpressed,
    required this.onpressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.8, 1.0],
            colors: [
              Colors.green,
              Colors.green.shade50,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(width, 50)),
            backgroundColor:
            MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor:
            MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                    onPressed: (){onpressed2;}, child: Text('CONTACT',style: TextStyle(color: Colors.white,fontFamily: 'InterBlack',fontSize: 10),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal.shade300)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
