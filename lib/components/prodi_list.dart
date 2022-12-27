import 'package:flutter/material.dart';

import '../models/models.dart';
import 'prodi_card.dart';

class ProdiList extends StatelessWidget {
  final List<Lembaga> prodi;

  const ProdiList({
    super.key, 
    required this.prodi
    });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: prodi.length,
      itemBuilder: (context, index) {
        final prodis = prodi[index];
        return ProdiCard(prodi: prodis);
      },
    );
  }
}