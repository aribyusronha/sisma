import 'package:flutter/material.dart';

import '../screen/jurusan_screen.dart';
import '../screen/screens.dart';

class HomeCard extends StatelessWidget{
    final List lembaga = [
        'Laboratorium',
        'UPT',
        'Rektorat',
        'Penyelengara MKU',
        'Fakultas',
        'Jurusan'
        
    ];

    final List icon = [
        Icons.business,
        Icons.cabin,
        Icons.apartment,
        Icons.account_balance,
        Icons.blinds_closed,
        Icons.book,
        Icons.book_online,

    ];

    HomeCard({super.key});
    
      @override
    Widget build(BuildContext context) {
        return Container(
             width: double.maxFinite,
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 320,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,          
        ),
        children: [
            for (var i = 0; i < lembaga.length; i++)
                menuItem(context, i, lembaga[i]),               
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, int index, String namaLembaga) {
    return Card(
      elevation: 5,
      child: SizedBox(    
        height: 50,
        width: 50,
        child: GestureDetector(
          onTap: () {
            goToSelectedMenu(context, index, namaLembaga);            
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,        
            children: [
              Icon(icon[index], size: 30,color: Colors.blue,),
              const SizedBox(height: 10),
              Text(
                lembaga[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void goToSelectedMenu(BuildContext context, int index, String namaLembaga) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const LabScreen();
          },
        ),
      );
    }
    else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const UptScreen();
          },
        ),
      );
    }
    else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const RektoratScreen();
          },
        ),
      );
    }
    else if (index == 3){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const PenyScreen();
          },
        ),
      );
    }
    else if (index == 4){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const FakultasScreen();
          },
        ),
      );
    }
    else if (index == 5){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const JurusanScreen();
          },
        ),
      );
    }
  }

    
}