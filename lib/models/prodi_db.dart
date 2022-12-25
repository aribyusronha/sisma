class ProdiDb{
    String? idSms;
    String? nmLemb;
    String? idFakUnila;
    String? idJurUnila;
    String? kodeProdi;

    ProdiDb({
        this.idSms,
        this.nmLemb,
        this.idFakUnila,
        this.idJurUnila,
        this.kodeProdi,
    });

    ProdiDb.fromJson(Map<String, dynamic> json) {
        idSms = json['id_sms'];
        nmLemb = json['nm_lemb'];
        idFakUnila = json['id_fak_unila'];
        idJurUnila = json['id_jur_unila'];
        kodeProdi = json['kode_prodi'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id_sms'] = idSms;
        data['nm_lemb'] = nmLemb;
        data['id_fak_unila'] = idFakUnila;
        data['id_jur_unila'] = idJurUnila;
        data['kode_prodi'] = kodeProdi;
        return data;
    }

    Map<String, dynamic> toMap() {
        var map = Map<String, dynamic>();
        if (idSms != null) {
            map['id_sms'] = idSms;
        }
        if (nmLemb != null) {
            map['nm_lemb'] = nmLemb;
        }
        if (idFakUnila != null) {
            map['id_fak_unila'] = idFakUnila;
        }
        if (idJurUnila != null) {
            map['id_jur_unila'] = idJurUnila;
        }
        if (kodeProdi != null) {
            map['kode_prodi'] = kodeProdi;
        }
        return map;
    }

    ProdiDb.fromMap(Map<dynamic, dynamic> map) {
        idSms = map['id_sms'];
        nmLemb = map['nm_lemb'];
        idFakUnila = map['id_fak_unila'];
        idJurUnila = map['id_jur_unila'];
        kodeProdi = map['kode_prodi'];
    }
}