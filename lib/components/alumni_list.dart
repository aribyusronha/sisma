import 'package:flutter/material.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';
import 'alumni_card.dart';

class AlumniList extends StatelessWidget {
  final List<Alumni> alumni;

  const AlumniList({
    super.key, 
    required this.alumni
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: double.infinity,
      child: ListView.builder(
        itemCount: alumni.length,
        scrollDirection: Axis.vertical,
        controller: ScrollController(keepScrollOffset: true),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final alumnis = alumni[index];
          return AlumniCard(alumni: alumnis);
        },
      ),
    );
  }
}