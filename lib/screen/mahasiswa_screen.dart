import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:sisma/models/models.dart';

import '../api/api_one_data.dart';
import '../components/mahasiswa_list.dart';

class MahasiswaScreen extends StatefulWidget{
    final String? id;
  const MahasiswaScreen({super.key, required this.id});

  @override
  State<MahasiswaScreen> createState() => _MahasiswaScreenState();
}

class _MahasiswaScreenState extends State<MahasiswaScreen> {    
    String tahun = '2020';
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
                  DropdownSearch<Mahasiswa>(
                    popupProps: PopupProps.dialog(
                      itemBuilder: (context, item, isSelected) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            item.periode_masuk.toString(),
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
                      return ApiOneData.getMahasiswaByProdi(widget.id!);
                    },
                    dropdownBuilder: (context, selectedItem) =>
                        Text(selectedItem?.periode_masuk.toString() ?? 'Pilih Prodi'),
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Pilih Prodi",
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        tahun = value!.periode_masuk.toString();
                        print(tahun);
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: getMhs(widget.id!,tahun),
            ),
          )
          
        ],
      ),
    );
  }

  Widget getMhs(String idMhs, String angkatan) {
    return FutureBuilder<List<Mahasiswa>>(
        future: ApiOneData.getMahasiswaByTahun(idMhs, angkatan),
        builder: (context, snapshot) {
          if (widget.id != null && tahun != null) {
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