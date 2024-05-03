import 'package:flutter/material.dart';
import 'package:zero_to_hero/auth/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zero to Hero'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: logout,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to Zero to Hero'),
      ),
    );
  }
}
