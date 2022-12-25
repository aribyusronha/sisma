import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:sisma/screen/screens.dart';

import '../api/api_one_data.dart';
import '../components/lembaga_list.dart';
import '../components/mahasiswa_list.dart';
import '../models/models.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  String? id;  

  @override
  Widget build(BuildContext context) {        
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [                
                  DropdownSearch<String>(
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                      showSearchBox: true,
                    ),
                    asyncItems: (text) {
                      return ApiOneData.getProdiName();
                    },  
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Pilih Prodi",
                      ),
                    ),
                    onChanged: (value) {
                        value == null ? id = null : id = value;                        
                    },
                    selectedItem: null,
                  ),                                                      
                ],
              ),
            ),
          ),                     
        ],
      ),
    );
  }

  Widget getMhs (String? id) {
    return FutureBuilder(
        future: ApiOneData.getMahasiswaByProdi(id!),
        builder: (context, AsyncSnapshot<List<Mahasiswa>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {              
            return MahasiswaList(mahasiswa: snapshot.data ?? []);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
