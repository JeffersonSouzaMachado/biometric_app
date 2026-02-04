import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Biométrico')),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(child: Text('HomePage')),
          SizedBox(height: 100),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                debugPrint('Button Pressed');

                context.go('/splash');
              },
              child: Text('Entrar no App'),
            ),
          ),
        ],
      ),
    );
  }
}
