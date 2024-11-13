import 'package:firebasefunctionality/Pages/registerpage.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
class Loginorregister extends StatefulWidget {
  const Loginorregister({super.key});

  @override
  State<Loginorregister> createState() => _LoginorregisterState();
}

class _LoginorregisterState extends State<Loginorregister> {
  bool showLogin = true;

  void toggle(){
    setState(() {
      showLogin = !showLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLogin){
      return  LoginPage(
        toggle: toggle,
      );
    }else{
      return  Registerpage(
        toggle: toggle,
      );
    }
  }
}
