



import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/homepage.dart';
import 'package:flutterlogin/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
     checkLogin();
  }

  checkLogin()async{
   SharedPreferences prefer = await SharedPreferences.getInstance();
   bool? userlogin= prefer.getBool("isLogin" );
   if(userlogin == null||userlogin==false){
    return  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Myloginpage()));

   }else if(userlogin==true) {
     
   }

    return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const MyHomepage()));
  }


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
    body: Center(
      child: Text("SPLASH SCREEN.......",style: TextStyle(color: Colors.blue)),
    ),
    );
  }

}
