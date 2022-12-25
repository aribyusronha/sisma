import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';
import 'lembaga_card.dart';

class LembagaList extends StatelessWidget {
  final List<Lembaga> lembaga;

  const LembagaList({
    super.key, 
    required this.lembaga
    });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lembaga.length,
      itemBuilder: (context, index) {
        final lembagas = lembaga[index];
        return LembagaCard(lembaga: lembagas);
      },
    );
  }
}