

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class Myloginpage extends StatefulWidget {
  const Myloginpage({super.key});

  @override
  State<Myloginpage> createState() => _MyloginpageState();
}

class _MyloginpageState extends State<Myloginpage> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  String phone = "";
  String password = "";

  bool isVisible = true;

  void login(String phone, String password) async {
    SharedPreferences prefer = await SharedPreferences.getInstance();
    prefer.setBool("isLogin", true);
    prefer.setString("phonenumber", phone);
    prefer.setString("password", password);
    loding();
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const MyHomepage()));

  }

  void loding() async {
    SharedPreferences prefer = await SharedPreferences.getInstance();

    setState(() {
      phone = prefer.getString("phonenumber") ?? "no phone";
      password = prefer.getString("password") ?? "no password";

    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN SCREEN"),
      ),
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: phonecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "phone number",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "enter your phone number";
                    } else if (value.length != 10) {
                      return "enter 10 digit number";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: isVisible,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                    hintText: "password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "enter your password";
                    } else if (value.length <= 5) {
                      return "min password must 5 ";
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                     
                        login(phone, password);
                      
                      
                    }
                  },
                  child: const Text("LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
