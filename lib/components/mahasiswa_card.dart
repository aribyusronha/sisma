import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';

class MahasiswaCard extends StatelessWidget{
    final Mahasiswa mahasiswa;

  const MahasiswaCard({super.key, required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            children: <Widget>[            
                ListTile(
                    title: Text(mahasiswa.nama_mahasiswa.toString()),
                    subtitle: Text(mahasiswa.ipk.toString()),
                ),
            ],
        ),
    );
  }

}