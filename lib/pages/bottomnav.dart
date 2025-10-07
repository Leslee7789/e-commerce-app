import 'package:flutter/material.dart';

class Bottomnav extends StatelessWidget {
  void Function(int)? onTap;
   Bottomnav({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        onTap:(value) =>  onTap!(value),
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded),label: 'cart'),
   
          ],
          ),
    );
  }
}