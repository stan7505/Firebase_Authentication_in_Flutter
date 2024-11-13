import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: Text('Homepage'),
      ),
      drawer:  Drawer(
    backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.logout),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              },
              title: const Text('Logout', style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    ),
      body: Center(
        child: Text('Welcome:  '+ user!.email!,
          style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
