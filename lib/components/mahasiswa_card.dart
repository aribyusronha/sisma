import 'package:flutter/material.dart';

import '../models/models.dart';

class MahasiswaCard extends StatelessWidget{
    final Mahasiswa mahasiswa;

  const MahasiswaCard({super.key, required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
            elevation: 5.0,
          child: Column(
              children: <Widget>[            
                  ListTile(
                      title: Text(mahasiswa.nama_mahasiswa.toString()),
                      subtitle: Text(mahasiswa.npm.toString()),
                      trailing: Text(mahasiswa.ipk.toString(), style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),
              ],
          ),
      ),
    );
  }

}