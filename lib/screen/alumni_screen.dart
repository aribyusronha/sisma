import 'package:flutter/material.dart';

import '../api/api_one_data.dart';
import '../components/alumni_list.dart';
import '../models/models.dart';

class AlumniScreen extends StatelessWidget {
    final String? id;
    final String? tahun;
    const AlumniScreen({super.key, required this.id, this.tahun});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumni'),
      ),
      
      body: FutureBuilder<List<Alumni>>(
        future: ApiOneData.getAlumni(id!,tahun!),
        builder: (context, snapshot) {
          if (id != null) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AlumniList(alumni: snapshot.data ?? []);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          } else {
            return const Center(
              child: Text("Silakan Pilih Prodi"),
            );
          }
        })
    );
  }
}
