import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';
import 'jurusan_card.dart';

class JurusanList extends StatelessWidget {
  final List<Lembaga> jurusan;

  const JurusanList({
    super.key, 
    required this.jurusan
    });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jurusan.length,
      itemBuilder: (context, index) {
        final jurusans = jurusan[index];
        return JurusanCard(jurusan: jurusans);
      },
    );
  }
}