import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';
import 'mahasiswa_card.dart';

class MahasiswaList extends StatelessWidget {
  final List<Mahasiswa> mahasiswa;

  const MahasiswaList({
    super.key, 
    required this.mahasiswa
    });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mahasiswa.length,
      itemBuilder: (context, index) {
        final mahasiswas = mahasiswa[index];
        return MahasiswaCard(mahasiswa: mahasiswas);
      },
    );
  }
}