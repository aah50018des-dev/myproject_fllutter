import 'package:flutter/material.dart';

class Searche extends StatelessWidget {
  const Searche({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Searche',style: TextStyle(fontSize: 50)),
          ListView(children: const [
            Padding(padding: EdgeInsets.all(15)),
            ListTile(
              title: Text('opshin 1 '),
              subtitle: Text('info'),
            )
          ],)
          
          ],
      ),
    );
  }
}