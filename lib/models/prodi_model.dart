class Fakultas {
  String namaFakultas;  
  

  Fakultas({
    required this.namaFakultas,
  });

  factory Fakultas.fromJson(Map<String, dynamic> json) {
        return Fakultas(
      namaFakultas: json['nm_lemb'] as String,
    );
  }
  
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (namaFakultas != null) {
      map['namaFakultas'] = namaFakultas;
    }
    return map;
  }

  factory Fakultas.fromMap(Map<String, dynamic> map) {
    return Fakultas(
        namaFakultas: map['namaFakultas'],
    );
  }
}
