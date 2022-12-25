import 'package:flutter/material.dart';
import 'package:sisma/models/prodi_model.dart';

import '../models/models.dart';
import 'prodi_card.dart';

class ProdiList extends StatelessWidget {
  final List<ProdiDb> prodi;

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