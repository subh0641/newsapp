import 'package:flutter/material.dart';
import 'package:newsapp/res/consts/assets.dart';
import 'package:newsapp/res/consts/consts.dart';

class Authenticationpage extends StatefulWidget {
  const Authenticationpage({super.key});

  @override
  State<Authenticationpage> createState() => _AuthenticationpageState();
}

class _AuthenticationpageState extends State<Authenticationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Image.asset(AppAssets.logo,width: 140,),
          Text(AppStrings.welcome),
        ],),
      ),
    );
  }
}
