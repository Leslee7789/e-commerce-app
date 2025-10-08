import 'package:ecommerce_app/pages/bottomnav.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
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
//pages we are goint to display.a shop page and a cart page
final List <Widget> pages =[
  ShopPage(),

  CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnav(
        onTap:(index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        leading:Builder(
          builder: (context) => IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, 
        icon: Icon(Icons.menu,color: Colors.black,)),
      ), 
      ),
      drawer: Drawer(),
      body: pages[selectedIndex],//this will take you to the pages when you press the bottom nav
    );
  }
}