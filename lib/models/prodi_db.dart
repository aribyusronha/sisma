class ProdiDb{
    String? idSms;
    String? nmLemb;
    String? status;
    String? gelar;    

    ProdiDb({
        this.idSms,
        this.nmLemb,
        this.status,
        this.gelar,        
    });

    ProdiDb.fromJson(Map<String, dynamic> json) {
        idSms = json['id_sms'];
        nmLemb = json['nm_lemb'];
        status = json['stat_prodi'];
        gelar = json['gelar_lulusan'];        
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id_sms'] = idSms;
        data['nm_lemb'] = nmLemb;
        data['stat_prodi'] = status;
        data['gelar_lulusan'] = gelar;
        
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
        if (status != null) {
            map['stat_prodi'] = status;
        }
        if (gelar != null) {
            map['gelar_lulusan'] = gelar;
        }
       
        return map;
    }

    ProdiDb.fromMap(Map<dynamic, dynamic> map) {
        idSms = map['id_sms'];
        nmLemb = map['nm_lemb'];
        status = map['stat_prodi'];
        gelar = map['gelar_lulusan'];        
    }
}