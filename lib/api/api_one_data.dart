import 'package:dio/dio.dart';
import 'package:sisma/models/lembaga_model.dart';

import '../models/models.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class ApiOneData {
    static String? token;
    

    static Future<void> authApi() async{
        var dio = Dio();
        var url = "http://onedata.unila.ac.id/api/live/0.1/auth/login";
        var authApi = 
            await dio.post(
                url,
                data: {
                    "id_aplikasi": "948df317-78f7-4b92-a53f-0a56215e07de",
                    "username": "mhs-testing",
                    "password": "unilajaya"
                },
            );  

        String hasil = authApi.data["data"]["token_bearer"];

        print(hasil);

        token = hasil;
    } 
    
    static Future<List<Lembaga>> getFakultas() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

        if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final fakultas = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "1"){
                        fakultas.add(Lembaga.fromJson(v));   
                    }
                });      
                return fakultas;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load fakultas');
        }
    }

    static Future<List<String>> getFakultasName() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

        if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final fakultas = <String>[];
                

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "1"){
                        fakultas.add(v['nm_lemb']);   
                    }
                });

                return fakultas;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load fakultas');
        }
    }

    static Future<List<Lembaga>> getJurusan() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

        if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final jurusan = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "2"){
                        jurusan.add(Lembaga.fromJson(v));   
                    }
                });      

                print(jurusan);
                return jurusan;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load Jurusan');
        }
    }

    static Future<List<String>> getJurusanName() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();        

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

        print(response.body);

        if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);        
            if (json['data'] != null) {  
                final jurusan = <String>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "2"){
                        jurusan.add(v['nm_lemb']);   
                    }
                });      

                print(jurusan);
                return jurusan;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load jurusan');
        }
    }

    static Future<List<Lembaga>> getProdi() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

       if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final prodi = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "3"){
                        prodi.add(Lembaga.fromJson(v));   
                    }
                });      

                print(prodi);
                return prodi;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }

    static Future<List<String>> getProdiName() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();        

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

        

        if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);        
            if (json['data'] != null) {                  
                final prodiName = <String>[];


                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "3"){                        
                        prodiName.add((v['nm_lemb']));   
                    }
                });      
                
                return prodiName;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }        

    static Future<List<Mahasiswa>> getMahasiswaByProdi(String id) async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/mahasiswa/list_mahasiswa?page=1&limit=50&sort_by=ASC&id_prodi=$id';

        authApi();        

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );               
        if (response.statusCode == 200) {
            
        final Map<String, dynamic> json = jsonDecode(response.body);        
            if (json['data'] != null) {  
                final mhs = <Mahasiswa>[];
            
                json['data'].forEach((v) {                 
                    mhs.add(Mahasiswa.fromJson(v));                       
                });      
                
                print(mhs);

                return mhs;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }

    static Future<List<Mahasiswa>> getMahasiswaByTahun(String id,String tahun) async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/mahasiswa/list_mahasiswa?page=1&limit=50&sort_by=ASC&id_prodi=$id';

        authApi();        

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );               
        if (response.statusCode == 200) {
            
        final Map<String, dynamic> json = jsonDecode(response.body);        
            if (json['data'] != null) {  
                final mhs = <Mahasiswa>[];
            
                json['data'].forEach((v) {   
                    if(v['periode_masuk'] == tahun){
                        mhs.add(Mahasiswa.fromJson(v));   
                    }                                  
                });      
                
                print(mhs);

                return mhs;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }

    static Future<List<Alumni>> getAlumni(String id,String tahun) async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/mahasiswa/list_alumni?page=1&limit=50&sort_by=ASC&tahun_lulus=$tahun&id_prodi=$id';

        authApi();        

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );               
        if (response.statusCode == 200) {
            
        final Map<String, dynamic> json = jsonDecode(response.body);        
            if (json['data'] != null) {  
                final almni = <Alumni>[];
            
                json['data'].forEach((v) {                 
                    almni.add(Alumni.fromJson(v));                       
                });      
                
                print(almni);

                return almni;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }

    static Future<List<Lembaga>> getLab() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

       if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final lab = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "4"){
                        lab.add(Lembaga.fromJson(v));   
                    }
                });      

                print(lab);
                return lab;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load prodi');
        }
    }

    static Future<List<Lembaga>> getUpt() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

       if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final upt = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "5"){
                        upt.add(Lembaga.fromJson(v));   
                    }
                });      

                print(upt);
                return upt;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load upt');
        }
    }

    static Future<List<Lembaga>> getPeny() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

       if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final penyelengara = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "6"){
                        penyelengara.add(Lembaga.fromJson(v));   
                    }
                });      

                print(penyelengara);
                return penyelengara;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load penyelengara');
        }
    }

    static Future<List<Lembaga>> getRektorat() async {
        var url = 'http://onedata.unila.ac.id/api/live/0.1/lembaga/daftar_lembaga';

        authApi();

        var header = {"Authorization": "$token"};
        final response = await http.get(
            headers: header,
            Uri.parse(url),
        );

       if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
            if (json['data'] != null) {  
                final rektorat = <Lembaga>[];

                
                json['data'].forEach((v) { 
                    if(v['id_jns_sms'] == "7"){
                        rektorat.add(Lembaga.fromJson(v));   
                    }
                });      
                
                return rektorat;       

            } else {         
                return [];
            }
        } else {
            throw Exception('Failed to load rektorat');
        }
    }

}
