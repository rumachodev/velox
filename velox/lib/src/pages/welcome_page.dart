// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1625813506062-0aeb1d7a094b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80'
                )
              )
            ),
            //efecto blur
            child: BackdropFilter(
              filter: ImageFilter.blur( sigmaX: 1.5, sigmaY: 1.5),
              child: Container (
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          )
        ],
      )
    );
  }
}