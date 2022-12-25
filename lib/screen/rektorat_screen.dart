import 'package:flutter/material.dart';

import '../api/api_one_data.dart';
import '../components/lembaga_list.dart';
import '../models/models.dart';

class RektoratScreen extends StatelessWidget{
  const RektoratScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: ApiOneData.getRektorat(),
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