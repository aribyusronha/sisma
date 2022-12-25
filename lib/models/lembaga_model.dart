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
}