import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:sisma/api/api_one_data.dart';
import 'package:sisma/components/home_card.dart';

import '../datatbase/db_helper.dart';
import '../models/models.dart';

class HomeScreen extends StatefulWidget {  
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Lembaga> wishProdi;
  DBHelper dbHelper = DBHelper();
  bool _isFavorited = false;
  

  String? id;
  Lembaga? lembaga;

  @override
  void initState() {
    dbHelper.getProdi().then((value) {
      setState(() {
        wishProdi = value;
      });
    });
    super.initState();
  }

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
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: double.infinity,
            child: const Text(
              'Data Prodi',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
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
                            ),
                          );
                        },
                        showSearchBox: true,
                      ),                      
                      asyncItems: (text) {
                        return ApiOneData.getProdi();
                      },
                      itemAsString: (item) => item.nmLemb.toString(),
                      dropdownBuilder: (context, selectedItem) => Text(
                          selectedItem?.nmLemb.toString() ??
                              'Silakan Pilih Prodi'),
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(

                          labelText: "Pilih Prodi",
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          id = value!.idSms.toString();
                          lembaga = value;
                        });
                      },                        
                      selectedItem: null,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: BottomCard(lembaga),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BottomCard (Lembaga? prodis) {
    
  if (prodis == null) {
    return Center(
      child: Container(
        width: double.infinity,
        child: const Text('Silakan Pilih Prodi',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
      ),
    );
  } else {    
    return SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
            title: Center(
                child: Text(
                    '${prodis.nmLemb.toString()} (${prodis.nmJenjDidik.toString()})',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold))),
            trailing: IconButton(
          icon: (_isFavorited? 
                const Icon(
                  Icons.bookmark_added,
                  color: Colors.blue,
                )
              : const Icon(
                  Icons.bookmark_add,
                  color: Colors.grey,
                )), onPressed: () {
                    if(_isFavorited){
                        dbHelper.deleteProdi(prodis.idSms.toString());
                    }
                    else{
                        dbHelper.addProdi(prodis);
                    }
                    setState(() {
                        if (_isFavorited) {
                            _isFavorited = false;
                        } else {
                            _isFavorited = true;
                        }
                    });
                },          
        ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Akreditasi Prodi : ${prodis.statProdi}'),
              const SizedBox(height: 10),
              Text('Berdiri Sejak : ${prodis.tglBerdiri}'),
              const SizedBox(height: 10),
              Text('Gelar Lulusan : ${prodis.gelarLulusan}'),
            ],
          )
        ]));
  }
}
}






