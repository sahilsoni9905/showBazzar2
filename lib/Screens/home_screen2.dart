import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlueAccent,),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade100, Colors.lightBlue.shade400],
          ),
        ),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){}, child: Text('asdf'),),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red,),),
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue,),),
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black,),),
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white,),),
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green,),),
                Container(height: 40,width: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
