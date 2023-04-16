import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:gdsc/homepage.dart';
import 'package:gdsc/navbar.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _showButtonPressDialog(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 150,
                  width: 300,
                  child: Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('GAIAS',style: TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Habibi'),),
                      Text('TOUCH',style: TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Habibi'),),
                    ],
                  )),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset('assets/img.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.g_mobiledata_rounded),color: Colors.white,),
                      TextButton(child:Text('Sign in With Google',style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DamnTime()));
                      },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// height: 150,
// width: 300,
// decoration: BoxDecoration(
// color: Colors.lightGreen.shade700,
// borderRadius: BorderRadius.circular(5),
// border: Border(
// bottom: BorderSide(width: 3.0,color: Colors.black),
// ),
// ),
// child: Text('GAIAS \n TOUCH',style: TextStyle(color: ),),