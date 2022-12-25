import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:sisma/api/api_one_data.dart';
import 'package:sisma/components/lembaga_card.dart';
import 'package:sisma/components/lembaga_list.dart';
import 'package:sisma/components/home_card.dart';
import 'package:sisma/components/main_card.dart';
import 'package:sisma/models/fakultas_model.dart';
import 'package:sisma/models/lembaga_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Image(
                        image: AssetImage('assets/logo-sisma.png'), width: 70),
                    Text(
                      'Halo, Selamat Datang di SISMA',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: double.infinity,
            child: const Text(
              'Lembaga Kampus',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: HomeCard(),
          ),
        //   const SizedBox(height: 10),
        //   Container(
        //     padding: const EdgeInsets.only(left: 10),
        //     width: double.infinity,
        //     child: const Text(
        //       'Lembaga Pendidikan',
        //       textAlign: TextAlign.start,
        //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        //   SizedBox(
        //     width: double.infinity,
        //     child: Card(
        //       elevation: 5,
        //       margin: const EdgeInsets.all(10),
        //       child: Padding(
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //           children: [
        //             Container(
        //                 width: double.infinity,
        //                 padding: const EdgeInsets.all(10),
        //                 child: Card(
        //                   elevation: 5,
        //                   child: Padding(
        //                     padding: const EdgeInsets.all(5),
        //                     child: Column(
        //                       children: [
        //                         Container(
        //                           width: double.infinity,
        //                           padding:
        //                               const EdgeInsets.only(left: 10, top: 10),
        //                           child: Row(
        //                             children: const [
        //                               Expanded(
        //                                 child: Text(
        //                                   'Fakultas',
        //                                   textAlign: TextAlign.start,
        //                                   style: TextStyle(
        //                                       fontSize: 16,
        //                                       fontWeight: FontWeight.bold),
        //                                 ),
        //                               ),
        //                               Padding(
        //                                 padding: EdgeInsets.only(left: 10.0),
        //                                 child: Icon(
        //                                   Icons.arrow_forward_rounded,
        //                                   size: 20,
        //                                 ),
        //                               )
        //                             ],
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 )),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),                   
        ],
      ),
    );
  }
}
