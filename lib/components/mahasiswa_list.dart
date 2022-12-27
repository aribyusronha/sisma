import 'package:flutter/material.dart';

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
    return Container(
        height: 500,
        width: double.infinity,
      child: ListView.builder(
        itemCount: mahasiswa.length,
        scrollDirection: Axis.vertical,
        controller: ScrollController(keepScrollOffset: true),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final mahasiswas = mahasiswa[index];
          return MahasiswaCard(mahasiswa: mahasiswas);
        },
      ),
    );
  }
}