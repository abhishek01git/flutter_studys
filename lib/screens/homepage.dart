import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  goBackto()async{
    SharedPreferences prefer = await SharedPreferences.getInstance();
    prefer.clear();
    // ignore: use_build_context_synchronously
    Navigator.of(context ).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Myloginpage()), (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        actions: [
          IconButton(
            onPressed: () {
              goBackto();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }


}
