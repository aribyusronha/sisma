class Lembaga {
  String? idSms;
  String? nmJnsSms;
  String? nmLemb;
  String? idFakUnila;
  String? idJurUnila;
  String? kodeProdi;
  String? noTel;
  String? noFax;
  String? email;
  String? tglBerdiri;
  String? sksLulus;
  String? gelarLulusan;
  String? statProdi;
  String? nmJenjDidik;
  String? idJnsSms;
  String? idWil;
  String? idIndukSms;
  String? waktuDataDitambahkan;
  String? terakhirDiubah;

  Lembaga(
      {this.idSms,
      this.nmJnsSms,
      this.nmLemb,
      this.idFakUnila,
      this.idJurUnila,
      this.kodeProdi,
      this.noTel,
      this.noFax,
      this.email,
      this.tglBerdiri,
      this.sksLulus,
      this.gelarLulusan,
      this.statProdi,
      this.nmJenjDidik,
      this.idJnsSms,
      this.idWil,
      this.idIndukSms,
      this.waktuDataDitambahkan,
      this.terakhirDiubah});

  Lembaga.fromJson(Map<String, dynamic> json) {
    idSms = json['id_sms'];
    nmJnsSms = json['nm_jns_sms'];
    nmLemb = json['nm_lemb'];
    idFakUnila = json['id_fak_unila'];
    idJurUnila = json['id_jur_unila'];
    kodeProdi = json['kode_prodi'];
    noTel = json['no_tel'];
    noFax = json['no_fax'];
    email = json['email'];
    tglBerdiri = json['tgl_berdiri'];
    sksLulus = json['sks_lulus'];
    gelarLulusan = json['gelar_lulusan'];
    statProdi = json['stat_prodi'];
    nmJenjDidik = json['nm_jenj_didik'];
    idJnsSms = json['id_jns_sms'];
    idWil = json['id_wil'];
    idIndukSms = json['id_induk_sms'];
    waktuDataDitambahkan = json['waktu_data_ditambahkan'];
    terakhirDiubah = json['terakhir_diubah'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_sms'] = this.idSms;
    data['nm_jns_sms'] = this.nmJnsSms;
    data['nm_lemb'] = this.nmLemb;
    data['id_fak_unila'] = this.idFakUnila;
    data['id_jur_unila'] = this.idJurUnila;
    data['kode_prodi'] = this.kodeProdi;
    data['no_tel'] = this.noTel;
    data['no_fax'] = this.noFax;
    data['email'] = this.email;
    data['tgl_berdiri'] = this.tglBerdiri;
    data['sks_lulus'] = this.sksLulus;
    data['gelar_lulusan'] = this.gelarLulusan;
    data['stat_prodi'] = this.statProdi;
    data['nm_jenj_didik'] = this.nmJenjDidik;
    data['id_jns_sms'] = this.idJnsSms;
    data['id_wil'] = this.idWil;
    data['id_induk_sms'] = this.idIndukSms;
    data['waktu_data_ditambahkan'] = this.waktuDataDitambahkan;
    data['terakhir_diubah'] = this.terakhirDiubah;
    return data;
  }

  Lembaga.fromMap(Map<dynamic, dynamic> map) {
    idSms = map['id_sms'];
    nmJnsSms = map['nm_jns_sms'];
    nmLemb = map['nm_lemb'];
    idFakUnila = map['id_fak_unila'];
    idJurUnila = map['id_jur_unila'];
    kodeProdi = map['kode_prodi'];
    noTel = map['no_tel'];
    noFax = map['no_fax'];
    email = map['email'];
    tglBerdiri = map['tgl_berdiri'];
    sksLulus = map['sks_lulus'];
    gelarLulusan = map['gelar_lulusan'];
    statProdi = map['stat_prodi'];
    nmJenjDidik = map['nm_jenj_didik'];
    idJnsSms = map['id_jns_sms'];
    idWil = map['id_wil'];
    idIndukSms = map['id_induk_sms'];
    waktuDataDitambahkan = map['waktu_data_ditambahkan'];
    terakhirDiubah = map['terakhir_diubah'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id_sms': idSms,
      'nm_jns_sms': nmJnsSms,
      'nm_lemb': nmLemb,
      'id_fak_unila': idFakUnila,
      'id_jur_unila': idJurUnila,
      'kode_prodi': kodeProdi,
      'no_tel': noTel,
      'no_fax': noFax,
      'email': email,
      'tgl_berdiri': tglBerdiri,
      'sks_lulus': sksLulus,
      'gelar_lulusan': gelarLulusan,
      'stat_prodi': statProdi,
      'nm_jenj_didik': nmJenjDidik,
      'id_jns_sms': idJnsSms,
      'id_wil': idWil,
      'id_induk_sms': idIndukSms,
      'waktu_data_ditambahkan': waktuDataDitambahkan,
      'terakhir_diubah': terakhirDiubah,
    };
  }

  
}