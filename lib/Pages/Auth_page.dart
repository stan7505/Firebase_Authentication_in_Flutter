import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefunctionality/Pages/LoginOrRegister.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
           builder:(context,snapshot){
            if(snapshot.hasData){
              return const  Homepage();
            }
            return const Loginorregister();
          }

      ),
      
    );
  }
}
