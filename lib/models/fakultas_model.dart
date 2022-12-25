class Fakultas {
   String? idSms;
  String? nmJnsSms;
  String? nmLemb;
  String? idFakUnila;
  String? idJurUnila;
  String? kodeProdi;
  

  Fakultas({
      this.idSms,
      this.nmJnsSms,
      this.nmLemb,
      this.idFakUnila,
      this.idJurUnila,
      this.kodeProdi,
  });

  Fakultas.fromJson(Map<String, dynamic> json) {
    idSms = json['id_sms'];
    nmJnsSms = json['nm_jns_sms'];
    nmLemb = json['nm_lemb'];
    idFakUnila = json['id_fak_unila'];
    idJurUnila = json['id_jur_unila'];
    kodeProdi = json['kode_prodi'];
  }
  
    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id_sms'] = this.idSms;
        data['nm_jns_sms'] = this.nmJnsSms;
        data['nm_lemb'] = this.nmLemb;
        data['id_fak_unila'] = this.idFakUnila;
        data['id_jur_unila'] = this.idJurUnila;
        data['kode_prodi'] = this.kodeProdi;
        return data;
    }
}
