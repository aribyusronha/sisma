// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sisma/models/models.dart';
import 'package:sisma/screen/jurusan_screen.dart';

class LembagaCard extends StatefulWidget {
  final Lembaga lembaga;

  const LembagaCard({
    super.key,
    required this.lembaga,
  });

  @override
  State<LembagaCard> createState() => _FakukltasCardState();
}

class _FakukltasCardState extends State<LembagaCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            children: <Widget>[            
                ListTile(
                    title: Text(widget.lembaga.nmLemb.toString()),                    
                ),
            ],
        ),
    );
  }
}
