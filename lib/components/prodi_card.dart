import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';

class ProdiCard extends StatelessWidget{
    final ProdiDb prodi;

  const ProdiCard({super.key, required this.prodi});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
            elevation: 5.0,
          child: Column(
              children: <Widget>[            
                  ListTile(
                      title: Text(prodi.nmLemb.toString()),
                      subtitle: Text(prodi.gelar.toString()),
                      trailing: Text(prodi.status.toString(), style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),
              ],
          ),
      ),
    );
  }

}