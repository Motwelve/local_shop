import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image(
                  image: AssetImage('lib/images/nike_logo.png'),
                  height: 240,
                ),
              ),
              const SizedBox(height: 48),

              Text(
                'Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(height: 24),

              Text(
                'Brand new sneakers and customer kicks made with premium Quality',
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
              const SizedBox(height: 48),

              GestureDetector(
                onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text('Shop Now',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
