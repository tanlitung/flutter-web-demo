import 'package:flutter/material.dart';
import 'package:flutter_portfolio_demo/section/header.dart';
import 'package:flutter_portfolio_demo/section/about.dart';
import 'package:flutter_portfolio_demo/section/projects.dart';

void main() {
  runApp(MaterialApp(
    home: Portfolio(),
  ));
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Header(),
              About(),
              Projects()
            ],
          ),
        ),
      ),
    );
  }
}
