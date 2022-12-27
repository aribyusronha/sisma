import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../api/api_one_data.dart';
import '../components/mahasiswa_list.dart';
import '../models/models.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String id = '54BBD27B-2376-4CAE-9951-76EF54BD2CA2';

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
                  DropdownSearch<Lembaga>(
                    popupProps: PopupProps.dialog(
                      itemBuilder: (context, item, isSelected) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            item.nmLemb.toString(),
                            style: TextStyle(
                                color: isSelected
                                    ? Colors.white
                                    : Colors.grey.shade900),
                          ),
                        );
                      },
                      //showSelectedItems: true,
                      showSearchBox: true,
                    ),            
                    asyncItems: (text) {
                      return ApiOneData.getProdi();
                    },
                    itemAsString: (item) => item.nmLemb.toString(),
                    dropdownBuilder: (context, selectedItem) =>
                        Text(selectedItem?.nmLemb.toString() ?? 'Pilih Prodi'),
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Pilih Prodi",
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        id = value!.idSms.toString();
                        print(id);
                      });
                    },
                    selectedItem: null,
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child:
                Padding(padding: const EdgeInsets.all(10), child: getMhs(id)),
          )
        ],
      ),
    );
  }

  Widget getMhs(String idMhs) {
    return FutureBuilder<List<Mahasiswa>>(
        future: ApiOneData.getMahasiswaByProdi(id),
        builder: (context, snapshot) {
          if (id != null) {
            if (snapshot.connectionState == ConnectionState.done) {
              return MahasiswaList(mahasiswa: snapshot.data ?? []);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          } else {
            return const Center(
              child: Text("Silakan Pilih Prodi"),
            );
          }
        });
  }
}
