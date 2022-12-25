class Jurusan {
  String namaJurusan;  
  

  Jurusan({
    required this.namaJurusan,
  });

  factory Jurusan.fromJson(Map<String, dynamic> json) {
    print('print aja bang');
    return Jurusan(
      namaJurusan: json['nm_lemb'] as String,
    );
  }
  
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (namaJurusan != null) {
      map['namaJurusan'] = namaJurusan;
    }
    return map;
  }

  factory Jurusan.fromMap(Map<String, dynamic> map) {
    return Jurusan(
        namaJurusan: map['namaJurusan'],
    );
  }
}
