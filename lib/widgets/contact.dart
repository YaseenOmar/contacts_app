import 'package:flutter/material.dart';

class ContatctItem extends StatelessWidget {

  final String name ;
  final String phone ;


  ContatctItem({required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person ,size: 32,color: Colors.red.shade200,),
      title: (
          Text(
            name,
            style: TextStyle(
              fontSize: 22,
            ),
          )
      ),
      subtitle: Text(
          phone
      ),
      trailing: IconButton(onPressed: (){},
        color: Colors.red.shade400,
        icon: Icon(Icons.call),
      ),
    );
  }
}