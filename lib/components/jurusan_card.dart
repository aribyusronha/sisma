import 'package:flutter/material.dart';

import '../models/models.dart';

class JurusanCard extends StatefulWidget{
  final Lembaga jurusan;

  const JurusanCard({super.key, required this.jurusan});

  @override
  State<JurusanCard> createState() => _JurusanCardState();
}

class _JurusanCardState extends State<JurusanCard> {
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
      child: Card(
          elevation: 5,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [                
                Text(widget.jurusan.nmLemb.toString()) ,                               
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                            child: const Text('Details'),
                            onPressed: () {/* ... */},
                        ),
                        ),                  
                    ],
                ),
              ],
          ),
      ),
    );
  }
}