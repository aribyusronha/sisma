import 'package:flutter/material.dart';
import 'package:sisma/api/api_one_data.dart';

import '../components/lembaga_list.dart';
import '../models/models.dart';

class LabScreen extends StatelessWidget{
  const LabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: ApiOneData.getLab(),
            builder: (context, AsyncSnapshot<List<Lembaga>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                    return LembagaList(lembaga: snapshot.data ?? []);
                } else {
                    return const Center(
                        child: CircularProgressIndicator(),
                    );
                }
            }
        );
  }

}