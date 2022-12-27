import 'package:flutter/material.dart';

import '../models/models.dart';

class AlumniCard extends StatelessWidget{
    final Alumni alumni;

  const AlumniCard({super.key, required this.alumni});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
            elevation: 5.0,
          child: Column(
              children: <Widget>[            
                  ListTile(
                      title: Text(alumni.nama_alumni.toString()),
                      subtitle: Text(alumni.npm.toString()),
                      trailing: Text(alumni.ipk.toString(), style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),
              ],
          ),
      ),
    );
  }

}