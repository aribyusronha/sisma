import 'package:flutter/material.dart';
import 'package:sisma/api/api_one_data.dart';
import 'package:sisma/models/models.dart';

import '../components/jurusan_list.dart';
import '../components/lembaga_list.dart';

class JurusanScreen extends StatelessWidget{
   

    const JurusanScreen({super.key});
  
   @override
    Widget build(BuildContext context) {                
        return Scaffold(
      appBar: AppBar(
        title: const Text('Jurusan'),
      ),
      body:  FutureBuilder(
        future: ApiOneData.getJurusan(),

        builder: (context, AsyncSnapshot<List<Lembaga>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
                return LembagaList(lembaga: snapshot.data ?? []);
            } else {
                return const Center(
                child: CircularProgressIndicator(),
            );
        }
      },
    ));
    }
}