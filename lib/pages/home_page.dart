import 'package:ecommerce_app/pages/bottomnav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int selectedIndex = 0;

void navigateBottomBar(int index){
  setState(() {
    selectedIndex =index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnav(
        onTap:(index) => navigateBottomBar(index),
      ),
    );
  }
}