import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});
//Text('Account',style: TextStyle(fontSize: 50),),
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
         Container(child: Row(children: [Text('data'),Text('data'),Text('data')],),),
         Container(child: Row(children: [
          Container(color: Colors.amber,),
         Container(color: Colors.amber,),
          Container(color: Colors.amber,)
         ,],),),
         Container(color: Colors.amber,),
         

        ],
      ),
    );
  }
}