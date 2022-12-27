import 'package:flutter/material.dart';
import 'package:sisma/models/models.dart';

import '../screen/alumni_screen.dart';
import '../screen/screens.dart';

class MainCard extends StatelessWidget {
  final Lembaga? prodi;

  final List title = [
    'Mahasiswa',
    'Alumni',
  ];

  final List icon = [
    Icons.person_search,
    Icons.school,
  ];

  MainCard({super.key, required this.prodi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          for (var i = 0; i < title.length; i++) menuItem(context, i, title[i]),
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, int index, String namatitle) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 30,
        width: 30,
        child: GestureDetector(
          onTap: () {
            goToSelectedMenu(context, index, namatitle);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon[index],
                size: 30,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Text(
                title[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goToSelectedMenu(BuildContext context, int index, String namatitle) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const SearchScreen();
          },
        ),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return AlumniScreen(id: prodi!.idSms);
          },
        ),
      );
    }
  }
}
