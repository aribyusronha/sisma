import 'package:flutter/material.dart';
import 'package:sisma/components/prodi_list.dart';
import 'package:sisma/datatbase/db_helper.dart';
import 'package:sisma/models/models.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
          future: DBHelper().getProdi(),
          builder: (context, AsyncSnapshot<List<Lembaga>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ProdiList(prodi: snapshot.data ?? []);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          });
  }
  
}