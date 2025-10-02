import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/swoosh.png',height: 240,),
            ),
            SizedBox(height: 48,),
            Text('Just Do It',
            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,),
            ),
            SizedBox(height: 24,),
            Center(
              child: Text('Brand New Sneakers and custom kicks just for you',
              style: TextStyle(fontSize:16,color: Colors.grey,),
              textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 48,),
            Container(
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(child: 
                Text('Shop Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),
                ),
                ),
              ),
              ),
          ],
        
        ),
      ),
    );
  }
}