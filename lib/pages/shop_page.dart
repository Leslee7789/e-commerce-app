import 'package:ecommerce_app/pages/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal:25 ),
        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(6),),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('search'),
            Icon(Icons.search),
          ],
        ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text('everyone flied...some longer than others'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Hot Picks🔥',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          Text('See All',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
          ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return ShoeTile(
              
            );
          },),
          ),
      ],
    );
  }
}