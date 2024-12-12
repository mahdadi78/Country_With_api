// To parse this JSON data, do
//
//     final allCountries = allCountriesFromJson(jsonString);

import 'dart:convert';

List<CountryModel> allCountriesFromJson(String str) => List<CountryModel>.from(
    json.decode(str).map((x) => CountryModel.fromJson(x)));

String allCountriesToJson(List<CountryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryModel {
  Name name;
  List<String>? tld;
  String cca2;
  String? ccn3;
  String cca3;
  bool? independent;
  String status;
  bool unMember;
  Currencies? currencies;
  Idd idd;
  List<String>? capital;
  List<String> altSpellings;
  String region;
  Languages? languages;
  Translations translations;
  List<double> latlng;
  bool landlocked;
  double area;
  Demonyms? demonyms;
  String flag;
  Maps maps;
  int population;
  Car car;
  List<String> timezones;
  List<String> continents;
  Flags flags;
  CoatOfArms coatOfArms;
  String startOfWeek;
  CapitalInfo capitalInfo;
  String? cioc;
  String? subregion;
  String? fifa;
  List<String>? borders;
  Gini? gini;
  PostalCode? postalCode;

  CountryModel({
    required this.name,
    this.tld,
    required this.cca2,
    this.ccn3,
    required this.cca3,
    this.independent,
    required this.status,
    required this.unMember,
    this.currencies,
    required this.idd,
    this.capital,
    required this.altSpellings,
    required this.region,
    this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.area,
    this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    this.cioc,
    this.subregion,
    this.fifa,
    this.borders,
    this.gini,
    this.postalCode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null
            ? []
            : List<String>.from(json["tld"]!.map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null
            ? null
            : Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? []
            : List<String>.from(json["capital"]!.map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        languages: json["languages"] == null
            ? null
            : Languages.fromJson(json["languages"]),
        translations: Translations.fromJson(json["translations"]),
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"]?.toDouble(),
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        cioc: json["cioc"],
        subregion: json["subregion"],
        fifa: json["fifa"],
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies?.toJson(),
        "idd": idd.toJson(),
        "capital":
            capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "languages": languages?.toJson(),
        "translations": translations.toJson(),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms?.toJson(),
        "flag": flag,
        "maps": maps.toJson(),
        "population": population,
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toJson(),
        "coatOfArms": coatOfArms.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toJson(),
        "cioc": cioc,
        "subregion": subregion,
        "fifa": fifa,
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "gini": gini?.toJson(),
        "postalCode": postalCode?.toJson(),
      };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? []
            : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  List<String>? signs;
  String side;

  Car({
    this.signs,
    required this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? []
            : List<String>.from(json["signs"]!.map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toJson() => {
        "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}

class Currencies {
  Aed? shp;
  Aed? xcd;
  Aed? chf;
  Aed? sll;
  Aed? huf;
  Aed? twd;
  Aed? xpf;
  Aed? bbd;
  Aed? nzd;
  Aed? xof;
  Aed? tnd;
  Aed? eur;
  Aed? idr;
  Aed? cve;
  Aed? lak;
  Aed? usd;
  Aed? ugx;
  Aed? bif;
  Aed? zar;
  Aed? lyd;
  Aed? mxn;
  Aed? xaf;
  Aed? mkd;
  Aed? cny;
  Aed? yer;
  Aed? gbp;
  Aed? ggp;
  Aed? sbd;
  Aed? nok;
  Aed? dkk;
  Aed? fok;
  Aed? uzs;
  Aed? egp;
  Aed? lkr;
  Aed? ils;
  Aed? jod;
  Aed? bdt;
  Aed? pen;
  Aed? sgd;
  Aed? currenciesTry;
  Aed? afn;
  Aed? awg;
  Aed? ckd;
  Aed? zmw;
  Aed? aud;
  Aed? azn;
  Aed? djf;
  Aed? kpw;
  Aed? mur;
  Aed? cop;
  Aed? mad;
  Aed? dzd;
  Aed? sdg;
  Aed? fjd;
  Aed? npr;
  Aed? gel;
  Aed? pkr;
  Aed? bwp;
  Aed? lbp;
  Aed? pgk;
  Aed? dop;
  Aed? qar;
  Aed? mga;
  Aed? inr;
  Aed? syp;
  Aed? szl;
  Aed? pyg;
  Aed? uah;
  Aed? imp;
  Aed? nad;
  Aed? aed;
  Aed? bgn;
  Aed? khr;
  Aed? iqd;
  Aed? sek;
  Aed? cuc;
  Aed? cup;
  Aed? kgs;
  Aed? rub;
  Aed? myr;
  Aed? stn;
  Aed? cad;
  Aed? mwk;
  Aed? sar;
  Aed? bam;
  Aed? etb;
  Aed? omr;
  Aed? mop;
  Aed? lsl;
  Aed? ang;
  Aed? isk;
  Aed? ars;
  Aed? mru;
  Aed? crc;
  Aed? thb;
  Aed? htg;
  Aed? tvd;
  Aed? hnl;
  Aed? byn;
  Aed? php;
  Aed? gip;
  Aed? gnf;
  Aed? bhd;
  Aed? srd;
  Aed? cdf;
  Aed? sos;
  Aed? czk;
  Aed? vuv;
  Aed? kes;
  Aed? rwf;
  Aed? ron;
  Aed? ttd;
  Aed? gyd;
  Aed? vnd;
  Aed? uyu;
  Aed? hkd;
  Aed? tmt;
  Aed? mzn;
  Aed? pab;
  Aed? ern;
  Aed? tzs;
  Aed? krw;
  Aed? aoa;
  Aed? kzt;
  Aed? mdl;
  Aed? fkp;
  Aed? amd;
  Aed? wst;
  Aed? jep;
  Aed? jpy;
  Aed? bob;
  Aed? clp;
  Aed? bmd;
  Aed? scr;
  Aed? gtq;
  Aed? tjs;
  Aed? gmd;
  Aed? ngn;
  Aed? bsd;
  Aed? kwd;
  Aed? mvr;
  Aed? ssp;
  Aed? irr;
  Aed? all;
  Aed? brl;
  Aed? rsd;
  Aed? bzd;
  Aed? mmk;
  Aed? btn;
  Aed? ves;
  Aed? lrd;
  Aed? jmd;
  Aed? pln;
  Aed? kyd;
  Aed? bnd;
  Aed? kmf;
  Aed? top;
  Aed? kid;
  Aed? ghs;
  Aed? zwl;
  Aed? mnt;
  Aed? nio;

  Currencies({
    this.shp,
    this.xcd,
    this.chf,
    this.sll,
    this.huf,
    this.twd,
    this.xpf,
    this.bbd,
    this.nzd,
    this.xof,
    this.tnd,
    this.eur,
    this.idr,
    this.cve,
    this.lak,
    this.usd,
    this.ugx,
    this.bif,
    this.zar,
    this.lyd,
    this.mxn,
    this.xaf,
    this.mkd,
    this.cny,
    this.yer,
    this.gbp,
    this.ggp,
    this.sbd,
    this.nok,
    this.dkk,
    this.fok,
    this.uzs,
    this.egp,
    this.lkr,
    this.ils,
    this.jod,
    this.bdt,
    this.pen,
    this.sgd,
    this.currenciesTry,
    this.afn,
    this.awg,
    this.ckd,
    this.zmw,
    this.aud,
    this.azn,
    this.djf,
    this.kpw,
    this.mur,
    this.cop,
    this.mad,
    this.dzd,
    this.sdg,
    this.fjd,
    this.npr,
    this.gel,
    this.pkr,
    this.bwp,
    this.lbp,
    this.pgk,
    this.dop,
    this.qar,
    this.mga,
    this.inr,
    this.syp,
    this.szl,
    this.pyg,
    this.uah,
    this.imp,
    this.nad,
    this.aed,
    this.bgn,
    this.khr,
    this.iqd,
    this.sek,
    this.cuc,
    this.cup,
    this.kgs,
    this.rub,
    this.myr,
    this.stn,
    this.cad,
    this.mwk,
    this.sar,
    this.bam,
    this.etb,
    this.omr,
    this.mop,
    this.lsl,
    this.ang,
    this.isk,
    this.ars,
    this.mru,
    this.crc,
    this.thb,
    this.htg,
    this.tvd,
    this.hnl,
    this.byn,
    this.php,
    this.gip,
    this.gnf,
    this.bhd,
    this.srd,
    this.cdf,
    this.sos,
    this.czk,
    this.vuv,
    this.kes,
    this.rwf,
    this.ron,
    this.ttd,
    this.gyd,
    this.vnd,
    this.uyu,
    this.hkd,
    this.tmt,
    this.mzn,
    this.pab,
    this.ern,
    this.tzs,
    this.krw,
    this.aoa,
    this.kzt,
    this.mdl,
    this.fkp,
    this.amd,
    this.wst,
    this.jep,
    this.jpy,
    this.bob,
    this.clp,
    this.bmd,
    this.scr,
    this.gtq,
    this.tjs,
    this.gmd,
    this.ngn,
    this.bsd,
    this.kwd,
    this.mvr,
    this.ssp,
    this.irr,
    this.all,
    this.brl,
    this.rsd,
    this.bzd,
    this.mmk,
    this.btn,
    this.ves,
    this.lrd,
    this.jmd,
    this.pln,
    this.kyd,
    this.bnd,
    this.kmf,
    this.top,
    this.kid,
    this.ghs,
    this.zwl,
    this.mnt,
    this.nio,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        sdg: json["SDG"] == null ? null : Aed.fromJson(json["SDG"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        bam: json["BAM"] == null ? null : Aed.fromJson(json["BAM"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
      );

  Map<String, dynamic> toJson() => {
        "SHP": shp?.toJson(),
        "XCD": xcd?.toJson(),
        "CHF": chf?.toJson(),
        "SLL": sll?.toJson(),
        "HUF": huf?.toJson(),
        "TWD": twd?.toJson(),
        "XPF": xpf?.toJson(),
        "BBD": bbd?.toJson(),
        "NZD": nzd?.toJson(),
        "XOF": xof?.toJson(),
        "TND": tnd?.toJson(),
        "EUR": eur?.toJson(),
        "IDR": idr?.toJson(),
        "CVE": cve?.toJson(),
        "LAK": lak?.toJson(),
        "USD": usd?.toJson(),
        "UGX": ugx?.toJson(),
        "BIF": bif?.toJson(),
        "ZAR": zar?.toJson(),
        "LYD": lyd?.toJson(),
        "MXN": mxn?.toJson(),
        "XAF": xaf?.toJson(),
        "MKD": mkd?.toJson(),
        "CNY": cny?.toJson(),
        "YER": yer?.toJson(),
        "GBP": gbp?.toJson(),
        "GGP": ggp?.toJson(),
        "SBD": sbd?.toJson(),
        "NOK": nok?.toJson(),
        "DKK": dkk?.toJson(),
        "FOK": fok?.toJson(),
        "UZS": uzs?.toJson(),
        "EGP": egp?.toJson(),
        "LKR": lkr?.toJson(),
        "ILS": ils?.toJson(),
        "JOD": jod?.toJson(),
        "BDT": bdt?.toJson(),
        "PEN": pen?.toJson(),
        "SGD": sgd?.toJson(),
        "TRY": currenciesTry?.toJson(),
        "AFN": afn?.toJson(),
        "AWG": awg?.toJson(),
        "CKD": ckd?.toJson(),
        "ZMW": zmw?.toJson(),
        "AUD": aud?.toJson(),
        "AZN": azn?.toJson(),
        "DJF": djf?.toJson(),
        "KPW": kpw?.toJson(),
        "MUR": mur?.toJson(),
        "COP": cop?.toJson(),
        "MAD": mad?.toJson(),
        "DZD": dzd?.toJson(),
        "SDG": sdg?.toJson(),
        "FJD": fjd?.toJson(),
        "NPR": npr?.toJson(),
        "GEL": gel?.toJson(),
        "PKR": pkr?.toJson(),
        "BWP": bwp?.toJson(),
        "LBP": lbp?.toJson(),
        "PGK": pgk?.toJson(),
        "DOP": dop?.toJson(),
        "QAR": qar?.toJson(),
        "MGA": mga?.toJson(),
        "INR": inr?.toJson(),
        "SYP": syp?.toJson(),
        "SZL": szl?.toJson(),
        "PYG": pyg?.toJson(),
        "UAH": uah?.toJson(),
        "IMP": imp?.toJson(),
        "NAD": nad?.toJson(),
        "AED": aed?.toJson(),
        "BGN": bgn?.toJson(),
        "KHR": khr?.toJson(),
        "IQD": iqd?.toJson(),
        "SEK": sek?.toJson(),
        "CUC": cuc?.toJson(),
        "CUP": cup?.toJson(),
        "KGS": kgs?.toJson(),
        "RUB": rub?.toJson(),
        "MYR": myr?.toJson(),
        "STN": stn?.toJson(),
        "CAD": cad?.toJson(),
        "MWK": mwk?.toJson(),
        "SAR": sar?.toJson(),
        "BAM": bam?.toJson(),
        "ETB": etb?.toJson(),
        "OMR": omr?.toJson(),
        "MOP": mop?.toJson(),
        "LSL": lsl?.toJson(),
        "ANG": ang?.toJson(),
        "ISK": isk?.toJson(),
        "ARS": ars?.toJson(),
        "MRU": mru?.toJson(),
        "CRC": crc?.toJson(),
        "THB": thb?.toJson(),
        "HTG": htg?.toJson(),
        "TVD": tvd?.toJson(),
        "HNL": hnl?.toJson(),
        "BYN": byn?.toJson(),
        "PHP": php?.toJson(),
        "GIP": gip?.toJson(),
        "GNF": gnf?.toJson(),
        "BHD": bhd?.toJson(),
        "SRD": srd?.toJson(),
        "CDF": cdf?.toJson(),
        "SOS": sos?.toJson(),
        "CZK": czk?.toJson(),
        "VUV": vuv?.toJson(),
        "KES": kes?.toJson(),
        "RWF": rwf?.toJson(),
        "RON": ron?.toJson(),
        "TTD": ttd?.toJson(),
        "GYD": gyd?.toJson(),
        "VND": vnd?.toJson(),
        "UYU": uyu?.toJson(),
        "HKD": hkd?.toJson(),
        "TMT": tmt?.toJson(),
        "MZN": mzn?.toJson(),
        "PAB": pab?.toJson(),
        "ERN": ern?.toJson(),
        "TZS": tzs?.toJson(),
        "KRW": krw?.toJson(),
        "AOA": aoa?.toJson(),
        "KZT": kzt?.toJson(),
        "MDL": mdl?.toJson(),
        "FKP": fkp?.toJson(),
        "AMD": amd?.toJson(),
        "WST": wst?.toJson(),
        "JEP": jep?.toJson(),
        "JPY": jpy?.toJson(),
        "BOB": bob?.toJson(),
        "CLP": clp?.toJson(),
        "BMD": bmd?.toJson(),
        "SCR": scr?.toJson(),
        "GTQ": gtq?.toJson(),
        "TJS": tjs?.toJson(),
        "GMD": gmd?.toJson(),
        "NGN": ngn?.toJson(),
        "BSD": bsd?.toJson(),
        "KWD": kwd?.toJson(),
        "MVR": mvr?.toJson(),
        "SSP": ssp?.toJson(),
        "IRR": irr?.toJson(),
        "ALL": all?.toJson(),
        "BRL": brl?.toJson(),
        "RSD": rsd?.toJson(),
        "BZD": bzd?.toJson(),
        "MMK": mmk?.toJson(),
        "BTN": btn?.toJson(),
        "VES": ves?.toJson(),
        "LRD": lrd?.toJson(),
        "JMD": jmd?.toJson(),
        "PLN": pln?.toJson(),
        "KYD": kyd?.toJson(),
        "BND": bnd?.toJson(),
        "KMF": kmf?.toJson(),
        "TOP": top?.toJson(),
        "KID": kid?.toJson(),
        "GHS": ghs?.toJson(),
        "ZWL": zwl?.toJson(),
        "MNT": mnt?.toJson(),
        "NIO": nio?.toJson(),
      };
}

class Aed {
  String name;
  String symbol;

  Aed({
    required this.name,
    required this.symbol,
  });

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Demonyms {
  Eng eng;
  Eng? fra;

  Demonyms({
    required this.eng,
    this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra?.toJson(),
      };
}

class Eng {
  String f;
  String m;

  Eng({
    required this.f,
    required this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };
}

class Flags {
  String png;
  String svg;
  String? alt;

  Flags({
    required this.png,
    required this.svg,
    this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}

class Gini {
  double? the2018;
  double? the2015;
  double? the2017;
  double? the2019;
  double? the2016;
  double? the2013;
  double? the2014;
  double? the2012;
  double? the2003;
  double? the2011;
  double? the2010;
  double? the2005;
  double? the2009;
  double? the1999;
  double? the1992;
  double? the1998;
  double? the2008;
  double? the2006;
  double? the2004;

  Gini({
    this.the2018,
    this.the2015,
    this.the2017,
    this.the2019,
    this.the2016,
    this.the2013,
    this.the2014,
    this.the2012,
    this.the2003,
    this.the2011,
    this.the2010,
    this.the2005,
    this.the2009,
    this.the1999,
    this.the1992,
    this.the1998,
    this.the2008,
    this.the2006,
    this.the2004,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2018: json["2018"]?.toDouble(),
        the2015: json["2015"]?.toDouble(),
        the2017: json["2017"]?.toDouble(),
        the2019: json["2019"]?.toDouble(),
        the2016: json["2016"]?.toDouble(),
        the2013: json["2013"]?.toDouble(),
        the2014: json["2014"]?.toDouble(),
        the2012: json["2012"]?.toDouble(),
        the2003: json["2003"]?.toDouble(),
        the2011: json["2011"]?.toDouble(),
        the2010: json["2010"]?.toDouble(),
        the2005: json["2005"]?.toDouble(),
        the2009: json["2009"]?.toDouble(),
        the1999: json["1999"]?.toDouble(),
        the1992: json["1992"]?.toDouble(),
        the1998: json["1998"]?.toDouble(),
        the2008: json["2008"]?.toDouble(),
        the2006: json["2006"]?.toDouble(),
        the2004: json["2004"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "2018": the2018,
        "2015": the2015,
        "2017": the2017,
        "2019": the2019,
        "2016": the2016,
        "2013": the2013,
        "2014": the2014,
        "2012": the2012,
        "2003": the2003,
        "2011": the2011,
        "2010": the2010,
        "2005": the2005,
        "2009": the2009,
        "1999": the1999,
        "1992": the1992,
        "1998": the1998,
        "2008": the2008,
        "2006": the2006,
        "2004": the2004,
      };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: json["suffixes"] == null
            ? []
            : List<String>.from(json["suffixes"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes":
            suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
      };
}

class Languages {
  String? eng;
  String? fra;
  String? gsw;
  String? ita;
  String? roh;
  String? hun;
  String? zho;
  String? ara;
  String? ind;
  String? por;
  String? lao;
  String? nld;
  String? pap;
  String? swa;
  String? cat;
  String? run;
  String? afr;
  String? nbl;
  String? nso;
  String? sot;
  String? ssw;
  String? tsn;
  String? tso;
  String? ven;
  String? xho;
  String? zul;
  String? spa;
  String? cal;
  String? cha;
  String? mkd;
  String? nfr;
  String? nor;
  String? dan;
  String? fao;
  String? rus;
  String? uzb;
  String? sin;
  String? tam;
  String? ben;
  String? aym;
  String? que;
  String? msa;
  String? tur;
  String? prs;
  String? pus;
  String? tuk;
  String? rar;
  String? fin;
  String? swe;
  String? smo;
  String? tkl;
  String? pov;
  String? aze;
  String? kor;
  String? mfe;
  String? ell;
  String? hrv;
  String? ber;
  String? fij;
  String? hif;
  String? deu;
  String? nep;
  String? kat;
  String? urd;
  String? hmo;
  String? tpi;
  String? pih;
  String? mlg;
  String? hin;
  String? cnr;
  String? grn;
  String? ukr;
  String? glv;
  String? her;
  String? hgm;
  String? kwn;
  String? loz;
  String? ndo;
  String? bul;
  String? kal;
  String? khm;
  String? arc;
  String? ckb;
  String? kir;
  String? nya;
  String? bos;
  String? srp;
  String? amh;
  String? eus;
  String? glc;
  String? slv;
  String? mah;
  String? isl;
  String? ltz;
  String? nau;
  String? mey;
  String? tha;
  String? hat;
  String? tvl;
  String? bel;
  String? lav;
  String? pau;
  String? fil;
  String? kon;
  String? lin;
  String? lua;
  String? som;
  String? ces;
  String? slk;
  String? bis;
  String? niu;
  String? kin;
  String? est;
  String? ron;
  String? tet;
  String? vie;
  String? lat;
  String? de;
  String? gle;
  String? nno;
  String? nob;
  String? smi;
  String? sag;
  String? tir;
  String? lit;
  String? kaz;
  String? hye;
  String? nrf;
  String? jpn;
  String? crs;
  String? tgk;
  String? mlt;
  String? sqi;
  String? div;
  String? fas;
  String? bjz;
  String? mya;
  String? dzo;
  String? jam;
  String? pol;
  String? zdj;
  String? ton;
  String? gil;
  String? bwg;
  String? kck;
  String? khi;
  String? ndc;
  String? nde;
  String? sna;
  String? toi;
  String? zib;
  String? mon;
  String? heb;
  String? mri;
  String? nzs;

  Languages({
    this.eng,
    this.fra,
    this.gsw,
    this.ita,
    this.roh,
    this.hun,
    this.zho,
    this.ara,
    this.ind,
    this.por,
    this.lao,
    this.nld,
    this.pap,
    this.swa,
    this.cat,
    this.run,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.spa,
    this.cal,
    this.cha,
    this.mkd,
    this.nfr,
    this.nor,
    this.dan,
    this.fao,
    this.rus,
    this.uzb,
    this.sin,
    this.tam,
    this.ben,
    this.aym,
    this.que,
    this.msa,
    this.tur,
    this.prs,
    this.pus,
    this.tuk,
    this.rar,
    this.fin,
    this.swe,
    this.smo,
    this.tkl,
    this.pov,
    this.aze,
    this.kor,
    this.mfe,
    this.ell,
    this.hrv,
    this.ber,
    this.fij,
    this.hif,
    this.deu,
    this.nep,
    this.kat,
    this.urd,
    this.hmo,
    this.tpi,
    this.pih,
    this.mlg,
    this.hin,
    this.cnr,
    this.grn,
    this.ukr,
    this.glv,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.bul,
    this.kal,
    this.khm,
    this.arc,
    this.ckb,
    this.kir,
    this.nya,
    this.bos,
    this.srp,
    this.amh,
    this.eus,
    this.glc,
    this.slv,
    this.mah,
    this.isl,
    this.ltz,
    this.nau,
    this.mey,
    this.tha,
    this.hat,
    this.tvl,
    this.bel,
    this.lav,
    this.pau,
    this.fil,
    this.kon,
    this.lin,
    this.lua,
    this.som,
    this.ces,
    this.slk,
    this.bis,
    this.niu,
    this.kin,
    this.est,
    this.ron,
    this.tet,
    this.vie,
    this.lat,
    this.de,
    this.gle,
    this.nno,
    this.nob,
    this.smi,
    this.sag,
    this.tir,
    this.lit,
    this.kaz,
    this.hye,
    this.nrf,
    this.jpn,
    this.crs,
    this.tgk,
    this.mlt,
    this.sqi,
    this.div,
    this.fas,
    this.bjz,
    this.mya,
    this.dzo,
    this.jam,
    this.pol,
    this.zdj,
    this.ton,
    this.gil,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.sna,
    this.toi,
    this.zib,
    this.mon,
    this.heb,
    this.mri,
    this.nzs,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json["eng"],
        fra: json["fra"],
        gsw: json["gsw"],
        ita: json["ita"],
        roh: json["roh"],
        hun: json["hun"],
        zho: json["zho"],
        ara: json["ara"],
        ind: json["ind"],
        por: json["por"],
        lao: json["lao"],
        nld: json["nld"],
        pap: json["pap"],
        swa: json["swa"],
        cat: json["cat"],
        run: json["run"],
        afr: json["afr"],
        nbl: json["nbl"],
        nso: json["nso"],
        sot: json["sot"],
        ssw: json["ssw"],
        tsn: json["tsn"],
        tso: json["tso"],
        ven: json["ven"],
        xho: json["xho"],
        zul: json["zul"],
        spa: json["spa"],
        cal: json["cal"],
        cha: json["cha"],
        mkd: json["mkd"],
        nfr: json["nfr"],
        nor: json["nor"],
        dan: json["dan"],
        fao: json["fao"],
        rus: json["rus"],
        uzb: json["uzb"],
        sin: json["sin"],
        tam: json["tam"],
        ben: json["ben"],
        aym: json["aym"],
        que: json["que"],
        msa: json["msa"],
        tur: json["tur"],
        prs: json["prs"],
        pus: json["pus"],
        tuk: json["tuk"],
        rar: json["rar"],
        fin: json["fin"],
        swe: json["swe"],
        smo: json["smo"],
        tkl: json["tkl"],
        pov: json["pov"],
        aze: json["aze"],
        kor: json["kor"],
        mfe: json["mfe"],
        ell: json["ell"],
        hrv: json["hrv"],
        ber: json["ber"],
        fij: json["fij"],
        hif: json["hif"],
        deu: json["deu"],
        nep: json["nep"],
        kat: json["kat"],
        urd: json["urd"],
        hmo: json["hmo"],
        tpi: json["tpi"],
        pih: json["pih"],
        mlg: json["mlg"],
        hin: json["hin"],
        cnr: json["cnr"],
        grn: json["grn"],
        ukr: json["ukr"],
        glv: json["glv"],
        her: json["her"],
        hgm: json["hgm"],
        kwn: json["kwn"],
        loz: json["loz"],
        ndo: json["ndo"],
        bul: json["bul"],
        kal: json["kal"],
        khm: json["khm"],
        arc: json["arc"],
        ckb: json["ckb"],
        kir: json["kir"],
        nya: json["nya"],
        bos: json["bos"],
        srp: json["srp"],
        amh: json["amh"],
        eus: json["eus"],
        glc: json["glc"],
        slv: json["slv"],
        mah: json["mah"],
        isl: json["isl"],
        ltz: json["ltz"],
        nau: json["nau"],
        mey: json["mey"],
        tha: json["tha"],
        hat: json["hat"],
        tvl: json["tvl"],
        bel: json["bel"],
        lav: json["lav"],
        pau: json["pau"],
        fil: json["fil"],
        kon: json["kon"],
        lin: json["lin"],
        lua: json["lua"],
        som: json["som"],
        ces: json["ces"],
        slk: json["slk"],
        bis: json["bis"],
        niu: json["niu"],
        kin: json["kin"],
        est: json["est"],
        ron: json["ron"],
        tet: json["tet"],
        vie: json["vie"],
        lat: json["lat"],
        de: json["de"],
        gle: json["gle"],
        nno: json["nno"],
        nob: json["nob"],
        smi: json["smi"],
        sag: json["sag"],
        tir: json["tir"],
        lit: json["lit"],
        kaz: json["kaz"],
        hye: json["hye"],
        nrf: json["nrf"],
        jpn: json["jpn"],
        crs: json["crs"],
        tgk: json["tgk"],
        mlt: json["mlt"],
        sqi: json["sqi"],
        div: json["div"],
        fas: json["fas"],
        bjz: json["bjz"],
        mya: json["mya"],
        dzo: json["dzo"],
        jam: json["jam"],
        pol: json["pol"],
        zdj: json["zdj"],
        ton: json["ton"],
        gil: json["gil"],
        bwg: json["bwg"],
        kck: json["kck"],
        khi: json["khi"],
        ndc: json["ndc"],
        nde: json["nde"],
        sna: json["sna"],
        toi: json["toi"],
        zib: json["zib"],
        mon: json["mon"],
        heb: json["heb"],
        mri: json["mri"],
        nzs: json["nzs"],
      );

  Map<String, dynamic> toJson() => {
        "eng": eng,
        "fra": fra,
        "gsw": gsw,
        "ita": ita,
        "roh": roh,
        "hun": hun,
        "zho": zho,
        "ara": ara,
        "ind": ind,
        "por": por,
        "lao": lao,
        "nld": nld,
        "pap": pap,
        "swa": swa,
        "cat": cat,
        "run": run,
        "afr": afr,
        "nbl": nbl,
        "nso": nso,
        "sot": sot,
        "ssw": ssw,
        "tsn": tsn,
        "tso": tso,
        "ven": ven,
        "xho": xho,
        "zul": zul,
        "spa": spa,
        "cal": cal,
        "cha": cha,
        "mkd": mkd,
        "nfr": nfr,
        "nor": nor,
        "dan": dan,
        "fao": fao,
        "rus": rus,
        "uzb": uzb,
        "sin": sin,
        "tam": tam,
        "ben": ben,
        "aym": aym,
        "que": que,
        "msa": msa,
        "tur": tur,
        "prs": prs,
        "pus": pus,
        "tuk": tuk,
        "rar": rar,
        "fin": fin,
        "swe": swe,
        "smo": smo,
        "tkl": tkl,
        "pov": pov,
        "aze": aze,
        "kor": kor,
        "mfe": mfe,
        "ell": ell,
        "hrv": hrv,
        "ber": ber,
        "fij": fij,
        "hif": hif,
        "deu": deu,
        "nep": nep,
        "kat": kat,
        "urd": urd,
        "hmo": hmo,
        "tpi": tpi,
        "pih": pih,
        "mlg": mlg,
        "hin": hin,
        "cnr": cnr,
        "grn": grn,
        "ukr": ukr,
        "glv": glv,
        "her": her,
        "hgm": hgm,
        "kwn": kwn,
        "loz": loz,
        "ndo": ndo,
        "bul": bul,
        "kal": kal,
        "khm": khm,
        "arc": arc,
        "ckb": ckb,
        "kir": kir,
        "nya": nya,
        "bos": bos,
        "srp": srp,
        "amh": amh,
        "eus": eus,
        "glc": glc,
        "slv": slv,
        "mah": mah,
        "isl": isl,
        "ltz": ltz,
        "nau": nau,
        "mey": mey,
        "tha": tha,
        "hat": hat,
        "tvl": tvl,
        "bel": bel,
        "lav": lav,
        "pau": pau,
        "fil": fil,
        "kon": kon,
        "lin": lin,
        "lua": lua,
        "som": som,
        "ces": ces,
        "slk": slk,
        "bis": bis,
        "niu": niu,
        "kin": kin,
        "est": est,
        "ron": ron,
        "tet": tet,
        "vie": vie,
        "lat": lat,
        "de": de,
        "gle": gle,
        "nno": nno,
        "nob": nob,
        "smi": smi,
        "sag": sag,
        "tir": tir,
        "lit": lit,
        "kaz": kaz,
        "hye": hye,
        "nrf": nrf,
        "jpn": jpn,
        "crs": crs,
        "tgk": tgk,
        "mlt": mlt,
        "sqi": sqi,
        "div": div,
        "fas": fas,
        "bjz": bjz,
        "mya": mya,
        "dzo": dzo,
        "jam": jam,
        "pol": pol,
        "zdj": zdj,
        "ton": ton,
        "gil": gil,
        "bwg": bwg,
        "kck": kck,
        "khi": khi,
        "ndc": ndc,
        "nde": nde,
        "sna": sna,
        "toi": toi,
        "zib": zib,
        "mon": mon,
        "heb": heb,
        "mri": mri,
        "nzs": nzs,
      };
}

class Maps {
  String googleMaps;
  String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class Name {
  String common;
  String official;
  NativeName? nativeName;

  Name({
    required this.common,
    required this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null
            ? null
            : NativeName.fromJson(json["nativeName"]),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName?.toJson(),
      };
}

class NativeName {
  Ara? eng;
  Ara? fra;
  Ara? gsw;
  Ara? ita;
  Ara? roh;
  Ara? hun;
  Ara? zho;
  Ara? ara;
  Ara? ind;
  Ara? por;
  Ara? lao;
  Ara? nld;
  Ara? pap;
  Ara? swa;
  Ara? cat;
  Ara? run;
  Ara? afr;
  Ara? nbl;
  Ara? nso;
  Ara? sot;
  Ara? ssw;
  Ara? tsn;
  Ara? tso;
  Ara? ven;
  Ara? xho;
  Ara? zul;
  Ara? spa;
  Ara? cal;
  Ara? cha;
  Ara? mkd;
  Ara? nfr;
  Ara? nor;
  Ara? dan;
  Ara? fao;
  Ara? rus;
  Ara? uzb;
  Ara? sin;
  Ara? tam;
  Ara? ben;
  Ara? aym;
  Ara? que;
  Ara? msa;
  Ara? tur;
  Ara? prs;
  Ara? pus;
  Ara? tuk;
  Ara? rar;
  Ara? fin;
  Ara? swe;
  Ara? smo;
  Ara? tkl;
  Ara? pov;
  Ara? aze;
  Ara? kor;
  Ara? mfe;
  Ara? ell;
  Ara? hrv;
  Ara? ber;
  Ara? fij;
  Ara? hif;
  Ara? deu;
  Ara? nep;
  Ara? kat;
  Ara? urd;
  Ara? hmo;
  Ara? tpi;
  Ara? pih;
  Ara? mlg;
  Ara? hin;
  Ara? cnr;
  Ara? grn;
  Ara? ukr;
  Ara? glv;
  Ara? her;
  Ara? hgm;
  Ara? kwn;
  Ara? loz;
  Ara? ndo;
  Ara? bul;
  Ara? kal;
  Ara? khm;
  Ara? arc;
  Ara? ckb;
  Ara? kir;
  Ara? nya;
  Ara? bos;
  Ara? srp;
  Ara? amh;
  Ara? slv;
  Ara? mah;
  Ara? isl;
  Ara? ltz;
  Ara? nau;
  Ara? mey;
  Ara? tha;
  Ara? hat;
  Ara? tvl;
  Ara? bel;
  Ara? lav;
  Ara? pau;
  Ara? fil;
  Ara? kon;
  Ara? lin;
  Ara? lua;
  Ara? som;
  Ara? ces;
  Ara? slk;
  Ara? bis;
  Ara? niu;
  Ara? kin;
  Ara? est;
  Ara? ron;
  Ara? tet;
  Ara? vie;
  Ara? lat;
  Ara? bar;
  Ara? gle;
  Ara? nno;
  Ara? nob;
  Ara? smi;
  Ara? sag;
  Ara? tir;
  Ara? lit;
  Ara? kaz;
  Ara? hye;
  Ara? nrf;
  Ara? jpn;
  Ara? crs;
  Ara? tgk;
  Ara? mlt;
  Ara? sqi;
  Ara? div;
  Ara? fas;
  Ara? bjz;
  Ara? mya;
  Ara? dzo;
  Ara? jam;
  Ara? pol;
  Ara? zdj;
  Ara? ton;
  Ara? gil;
  Ara? bwg;
  Ara? kck;
  Ara? khi;
  Ara? ndc;
  Ara? nde;
  Ara? sna;
  Ara? toi;
  Ara? zib;
  Ara? mon;
  Ara? heb;
  Ara? mri;
  Ara? nzs;

  NativeName({
    this.eng,
    this.fra,
    this.gsw,
    this.ita,
    this.roh,
    this.hun,
    this.zho,
    this.ara,
    this.ind,
    this.por,
    this.lao,
    this.nld,
    this.pap,
    this.swa,
    this.cat,
    this.run,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.spa,
    this.cal,
    this.cha,
    this.mkd,
    this.nfr,
    this.nor,
    this.dan,
    this.fao,
    this.rus,
    this.uzb,
    this.sin,
    this.tam,
    this.ben,
    this.aym,
    this.que,
    this.msa,
    this.tur,
    this.prs,
    this.pus,
    this.tuk,
    this.rar,
    this.fin,
    this.swe,
    this.smo,
    this.tkl,
    this.pov,
    this.aze,
    this.kor,
    this.mfe,
    this.ell,
    this.hrv,
    this.ber,
    this.fij,
    this.hif,
    this.deu,
    this.nep,
    this.kat,
    this.urd,
    this.hmo,
    this.tpi,
    this.pih,
    this.mlg,
    this.hin,
    this.cnr,
    this.grn,
    this.ukr,
    this.glv,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.bul,
    this.kal,
    this.khm,
    this.arc,
    this.ckb,
    this.kir,
    this.nya,
    this.bos,
    this.srp,
    this.amh,
    this.slv,
    this.mah,
    this.isl,
    this.ltz,
    this.nau,
    this.mey,
    this.tha,
    this.hat,
    this.tvl,
    this.bel,
    this.lav,
    this.pau,
    this.fil,
    this.kon,
    this.lin,
    this.lua,
    this.som,
    this.ces,
    this.slk,
    this.bis,
    this.niu,
    this.kin,
    this.est,
    this.ron,
    this.tet,
    this.vie,
    this.lat,
    this.bar,
    this.gle,
    this.nno,
    this.nob,
    this.smi,
    this.sag,
    this.tir,
    this.lit,
    this.kaz,
    this.hye,
    this.nrf,
    this.jpn,
    this.crs,
    this.tgk,
    this.mlt,
    this.sqi,
    this.div,
    this.fas,
    this.bjz,
    this.mya,
    this.dzo,
    this.jam,
    this.pol,
    this.zdj,
    this.ton,
    this.gil,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.sna,
    this.toi,
    this.zib,
    this.mon,
    this.heb,
    this.mri,
    this.nzs,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
        gsw: json["gsw"] == null ? null : Ara.fromJson(json["gsw"]),
        ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
        roh: json["roh"] == null ? null : Ara.fromJson(json["roh"]),
        hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
        zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
        ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
        ind: json["ind"] == null ? null : Ara.fromJson(json["ind"]),
        por: json["por"] == null ? null : Ara.fromJson(json["por"]),
        lao: json["lao"] == null ? null : Ara.fromJson(json["lao"]),
        nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
        pap: json["pap"] == null ? null : Ara.fromJson(json["pap"]),
        swa: json["swa"] == null ? null : Ara.fromJson(json["swa"]),
        cat: json["cat"] == null ? null : Ara.fromJson(json["cat"]),
        run: json["run"] == null ? null : Ara.fromJson(json["run"]),
        afr: json["afr"] == null ? null : Ara.fromJson(json["afr"]),
        nbl: json["nbl"] == null ? null : Ara.fromJson(json["nbl"]),
        nso: json["nso"] == null ? null : Ara.fromJson(json["nso"]),
        sot: json["sot"] == null ? null : Ara.fromJson(json["sot"]),
        ssw: json["ssw"] == null ? null : Ara.fromJson(json["ssw"]),
        tsn: json["tsn"] == null ? null : Ara.fromJson(json["tsn"]),
        tso: json["tso"] == null ? null : Ara.fromJson(json["tso"]),
        ven: json["ven"] == null ? null : Ara.fromJson(json["ven"]),
        xho: json["xho"] == null ? null : Ara.fromJson(json["xho"]),
        zul: json["zul"] == null ? null : Ara.fromJson(json["zul"]),
        spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
        cal: json["cal"] == null ? null : Ara.fromJson(json["cal"]),
        cha: json["cha"] == null ? null : Ara.fromJson(json["cha"]),
        mkd: json["mkd"] == null ? null : Ara.fromJson(json["mkd"]),
        nfr: json["nfr"] == null ? null : Ara.fromJson(json["nfr"]),
        nor: json["nor"] == null ? null : Ara.fromJson(json["nor"]),
        dan: json["dan"] == null ? null : Ara.fromJson(json["dan"]),
        fao: json["fao"] == null ? null : Ara.fromJson(json["fao"]),
        rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
        uzb: json["uzb"] == null ? null : Ara.fromJson(json["uzb"]),
        sin: json["sin"] == null ? null : Ara.fromJson(json["sin"]),
        tam: json["tam"] == null ? null : Ara.fromJson(json["tam"]),
        ben: json["ben"] == null ? null : Ara.fromJson(json["ben"]),
        aym: json["aym"] == null ? null : Ara.fromJson(json["aym"]),
        que: json["que"] == null ? null : Ara.fromJson(json["que"]),
        msa: json["msa"] == null ? null : Ara.fromJson(json["msa"]),
        tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
        prs: json["prs"] == null ? null : Ara.fromJson(json["prs"]),
        pus: json["pus"] == null ? null : Ara.fromJson(json["pus"]),
        tuk: json["tuk"] == null ? null : Ara.fromJson(json["tuk"]),
        rar: json["rar"] == null ? null : Ara.fromJson(json["rar"]),
        fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
        swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
        smo: json["smo"] == null ? null : Ara.fromJson(json["smo"]),
        tkl: json["tkl"] == null ? null : Ara.fromJson(json["tkl"]),
        pov: json["pov"] == null ? null : Ara.fromJson(json["pov"]),
        aze: json["aze"] == null ? null : Ara.fromJson(json["aze"]),
        kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
        mfe: json["mfe"] == null ? null : Ara.fromJson(json["mfe"]),
        ell: json["ell"] == null ? null : Ara.fromJson(json["ell"]),
        hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
        ber: json["ber"] == null ? null : Ara.fromJson(json["ber"]),
        fij: json["fij"] == null ? null : Ara.fromJson(json["fij"]),
        hif: json["hif"] == null ? null : Ara.fromJson(json["hif"]),
        deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
        nep: json["nep"] == null ? null : Ara.fromJson(json["nep"]),
        kat: json["kat"] == null ? null : Ara.fromJson(json["kat"]),
        urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
        hmo: json["hmo"] == null ? null : Ara.fromJson(json["hmo"]),
        tpi: json["tpi"] == null ? null : Ara.fromJson(json["tpi"]),
        pih: json["pih"] == null ? null : Ara.fromJson(json["pih"]),
        mlg: json["mlg"] == null ? null : Ara.fromJson(json["mlg"]),
        hin: json["hin"] == null ? null : Ara.fromJson(json["hin"]),
        cnr: json["cnr"] == null ? null : Ara.fromJson(json["cnr"]),
        grn: json["grn"] == null ? null : Ara.fromJson(json["grn"]),
        ukr: json["ukr"] == null ? null : Ara.fromJson(json["ukr"]),
        glv: json["glv"] == null ? null : Ara.fromJson(json["glv"]),
        her: json["her"] == null ? null : Ara.fromJson(json["her"]),
        hgm: json["hgm"] == null ? null : Ara.fromJson(json["hgm"]),
        kwn: json["kwn"] == null ? null : Ara.fromJson(json["kwn"]),
        loz: json["loz"] == null ? null : Ara.fromJson(json["loz"]),
        ndo: json["ndo"] == null ? null : Ara.fromJson(json["ndo"]),
        bul: json["bul"] == null ? null : Ara.fromJson(json["bul"]),
        kal: json["kal"] == null ? null : Ara.fromJson(json["kal"]),
        khm: json["khm"] == null ? null : Ara.fromJson(json["khm"]),
        arc: json["arc"] == null ? null : Ara.fromJson(json["arc"]),
        ckb: json["ckb"] == null ? null : Ara.fromJson(json["ckb"]),
        kir: json["kir"] == null ? null : Ara.fromJson(json["kir"]),
        nya: json["nya"] == null ? null : Ara.fromJson(json["nya"]),
        bos: json["bos"] == null ? null : Ara.fromJson(json["bos"]),
        srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
        amh: json["amh"] == null ? null : Ara.fromJson(json["amh"]),
        slv: json["slv"] == null ? null : Ara.fromJson(json["slv"]),
        mah: json["mah"] == null ? null : Ara.fromJson(json["mah"]),
        isl: json["isl"] == null ? null : Ara.fromJson(json["isl"]),
        ltz: json["ltz"] == null ? null : Ara.fromJson(json["ltz"]),
        nau: json["nau"] == null ? null : Ara.fromJson(json["nau"]),
        mey: json["mey"] == null ? null : Ara.fromJson(json["mey"]),
        tha: json["tha"] == null ? null : Ara.fromJson(json["tha"]),
        hat: json["hat"] == null ? null : Ara.fromJson(json["hat"]),
        tvl: json["tvl"] == null ? null : Ara.fromJson(json["tvl"]),
        bel: json["bel"] == null ? null : Ara.fromJson(json["bel"]),
        lav: json["lav"] == null ? null : Ara.fromJson(json["lav"]),
        pau: json["pau"] == null ? null : Ara.fromJson(json["pau"]),
        fil: json["fil"] == null ? null : Ara.fromJson(json["fil"]),
        kon: json["kon"] == null ? null : Ara.fromJson(json["kon"]),
        lin: json["lin"] == null ? null : Ara.fromJson(json["lin"]),
        lua: json["lua"] == null ? null : Ara.fromJson(json["lua"]),
        som: json["som"] == null ? null : Ara.fromJson(json["som"]),
        ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
        slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
        bis: json["bis"] == null ? null : Ara.fromJson(json["bis"]),
        niu: json["niu"] == null ? null : Ara.fromJson(json["niu"]),
        kin: json["kin"] == null ? null : Ara.fromJson(json["kin"]),
        est: json["est"] == null ? null : Ara.fromJson(json["est"]),
        ron: json["ron"] == null ? null : Ara.fromJson(json["ron"]),
        tet: json["tet"] == null ? null : Ara.fromJson(json["tet"]),
        vie: json["vie"] == null ? null : Ara.fromJson(json["vie"]),
        lat: json["lat"] == null ? null : Ara.fromJson(json["lat"]),
        bar: json["bar"] == null ? null : Ara.fromJson(json["bar"]),
        gle: json["gle"] == null ? null : Ara.fromJson(json["gle"]),
        nno: json["nno"] == null ? null : Ara.fromJson(json["nno"]),
        nob: json["nob"] == null ? null : Ara.fromJson(json["nob"]),
        smi: json["smi"] == null ? null : Ara.fromJson(json["smi"]),
        sag: json["sag"] == null ? null : Ara.fromJson(json["sag"]),
        tir: json["tir"] == null ? null : Ara.fromJson(json["tir"]),
        lit: json["lit"] == null ? null : Ara.fromJson(json["lit"]),
        kaz: json["kaz"] == null ? null : Ara.fromJson(json["kaz"]),
        hye: json["hye"] == null ? null : Ara.fromJson(json["hye"]),
        nrf: json["nrf"] == null ? null : Ara.fromJson(json["nrf"]),
        jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
        crs: json["crs"] == null ? null : Ara.fromJson(json["crs"]),
        tgk: json["tgk"] == null ? null : Ara.fromJson(json["tgk"]),
        mlt: json["mlt"] == null ? null : Ara.fromJson(json["mlt"]),
        sqi: json["sqi"] == null ? null : Ara.fromJson(json["sqi"]),
        div: json["div"] == null ? null : Ara.fromJson(json["div"]),
        fas: json["fas"] == null ? null : Ara.fromJson(json["fas"]),
        bjz: json["bjz"] == null ? null : Ara.fromJson(json["bjz"]),
        mya: json["mya"] == null ? null : Ara.fromJson(json["mya"]),
        dzo: json["dzo"] == null ? null : Ara.fromJson(json["dzo"]),
        jam: json["jam"] == null ? null : Ara.fromJson(json["jam"]),
        pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
        zdj: json["zdj"] == null ? null : Ara.fromJson(json["zdj"]),
        ton: json["ton"] == null ? null : Ara.fromJson(json["ton"]),
        gil: json["gil"] == null ? null : Ara.fromJson(json["gil"]),
        bwg: json["bwg"] == null ? null : Ara.fromJson(json["bwg"]),
        kck: json["kck"] == null ? null : Ara.fromJson(json["kck"]),
        khi: json["khi"] == null ? null : Ara.fromJson(json["khi"]),
        ndc: json["ndc"] == null ? null : Ara.fromJson(json["ndc"]),
        nde: json["nde"] == null ? null : Ara.fromJson(json["nde"]),
        sna: json["sna"] == null ? null : Ara.fromJson(json["sna"]),
        toi: json["toi"] == null ? null : Ara.fromJson(json["toi"]),
        zib: json["zib"] == null ? null : Ara.fromJson(json["zib"]),
        mon: json["mon"] == null ? null : Ara.fromJson(json["mon"]),
        heb: json["heb"] == null ? null : Ara.fromJson(json["heb"]),
        mri: json["mri"] == null ? null : Ara.fromJson(json["mri"]),
        nzs: json["nzs"] == null ? null : Ara.fromJson(json["nzs"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
        "fra": fra?.toJson(),
        "gsw": gsw?.toJson(),
        "ita": ita?.toJson(),
        "roh": roh?.toJson(),
        "hun": hun?.toJson(),
        "zho": zho?.toJson(),
        "ara": ara?.toJson(),
        "ind": ind?.toJson(),
        "por": por?.toJson(),
        "lao": lao?.toJson(),
        "nld": nld?.toJson(),
        "pap": pap?.toJson(),
        "swa": swa?.toJson(),
        "cat": cat?.toJson(),
        "run": run?.toJson(),
        "afr": afr?.toJson(),
        "nbl": nbl?.toJson(),
        "nso": nso?.toJson(),
        "sot": sot?.toJson(),
        "ssw": ssw?.toJson(),
        "tsn": tsn?.toJson(),
        "tso": tso?.toJson(),
        "ven": ven?.toJson(),
        "xho": xho?.toJson(),
        "zul": zul?.toJson(),
        "spa": spa?.toJson(),
        "cal": cal?.toJson(),
        "cha": cha?.toJson(),
        "mkd": mkd?.toJson(),
        "nfr": nfr?.toJson(),
        "nor": nor?.toJson(),
        "dan": dan?.toJson(),
        "fao": fao?.toJson(),
        "rus": rus?.toJson(),
        "uzb": uzb?.toJson(),
        "sin": sin?.toJson(),
        "tam": tam?.toJson(),
        "ben": ben?.toJson(),
        "aym": aym?.toJson(),
        "que": que?.toJson(),
        "msa": msa?.toJson(),
        "tur": tur?.toJson(),
        "prs": prs?.toJson(),
        "pus": pus?.toJson(),
        "tuk": tuk?.toJson(),
        "rar": rar?.toJson(),
        "fin": fin?.toJson(),
        "swe": swe?.toJson(),
        "smo": smo?.toJson(),
        "tkl": tkl?.toJson(),
        "pov": pov?.toJson(),
        "aze": aze?.toJson(),
        "kor": kor?.toJson(),
        "mfe": mfe?.toJson(),
        "ell": ell?.toJson(),
        "hrv": hrv?.toJson(),
        "ber": ber?.toJson(),
        "fij": fij?.toJson(),
        "hif": hif?.toJson(),
        "deu": deu?.toJson(),
        "nep": nep?.toJson(),
        "kat": kat?.toJson(),
        "urd": urd?.toJson(),
        "hmo": hmo?.toJson(),
        "tpi": tpi?.toJson(),
        "pih": pih?.toJson(),
        "mlg": mlg?.toJson(),
        "hin": hin?.toJson(),
        "cnr": cnr?.toJson(),
        "grn": grn?.toJson(),
        "ukr": ukr?.toJson(),
        "glv": glv?.toJson(),
        "her": her?.toJson(),
        "hgm": hgm?.toJson(),
        "kwn": kwn?.toJson(),
        "loz": loz?.toJson(),
        "ndo": ndo?.toJson(),
        "bul": bul?.toJson(),
        "kal": kal?.toJson(),
        "khm": khm?.toJson(),
        "arc": arc?.toJson(),
        "ckb": ckb?.toJson(),
        "kir": kir?.toJson(),
        "nya": nya?.toJson(),
        "bos": bos?.toJson(),
        "srp": srp?.toJson(),
        "amh": amh?.toJson(),
        "slv": slv?.toJson(),
        "mah": mah?.toJson(),
        "isl": isl?.toJson(),
        "ltz": ltz?.toJson(),
        "nau": nau?.toJson(),
        "mey": mey?.toJson(),
        "tha": tha?.toJson(),
        "hat": hat?.toJson(),
        "tvl": tvl?.toJson(),
        "bel": bel?.toJson(),
        "lav": lav?.toJson(),
        "pau": pau?.toJson(),
        "fil": fil?.toJson(),
        "kon": kon?.toJson(),
        "lin": lin?.toJson(),
        "lua": lua?.toJson(),
        "som": som?.toJson(),
        "ces": ces?.toJson(),
        "slk": slk?.toJson(),
        "bis": bis?.toJson(),
        "niu": niu?.toJson(),
        "kin": kin?.toJson(),
        "est": est?.toJson(),
        "ron": ron?.toJson(),
        "tet": tet?.toJson(),
        "vie": vie?.toJson(),
        "lat": lat?.toJson(),
        "bar": bar?.toJson(),
        "gle": gle?.toJson(),
        "nno": nno?.toJson(),
        "nob": nob?.toJson(),
        "smi": smi?.toJson(),
        "sag": sag?.toJson(),
        "tir": tir?.toJson(),
        "lit": lit?.toJson(),
        "kaz": kaz?.toJson(),
        "hye": hye?.toJson(),
        "nrf": nrf?.toJson(),
        "jpn": jpn?.toJson(),
        "crs": crs?.toJson(),
        "tgk": tgk?.toJson(),
        "mlt": mlt?.toJson(),
        "sqi": sqi?.toJson(),
        "div": div?.toJson(),
        "fas": fas?.toJson(),
        "bjz": bjz?.toJson(),
        "mya": mya?.toJson(),
        "dzo": dzo?.toJson(),
        "jam": jam?.toJson(),
        "pol": pol?.toJson(),
        "zdj": zdj?.toJson(),
        "ton": ton?.toJson(),
        "gil": gil?.toJson(),
        "bwg": bwg?.toJson(),
        "kck": kck?.toJson(),
        "khi": khi?.toJson(),
        "ndc": ndc?.toJson(),
        "nde": nde?.toJson(),
        "sna": sna?.toJson(),
        "toi": toi?.toJson(),
        "zib": zib?.toJson(),
        "mon": mon?.toJson(),
        "heb": heb?.toJson(),
        "mri": mri?.toJson(),
        "nzs": nzs?.toJson(),
      };
}

class Ara {
  String official;
  String common;

  Ara({
    required this.official,
    required this.common,
  });

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  String format;
  String? regex;

  PostalCode({
    required this.format,
    this.regex,
  });

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };
}

class Translations {
  Ara ara;
  Ara bre;
  Ara ces;
  Ara cym;
  Ara deu;
  Ara est;
  Ara fin;
  Ara fra;
  Ara? hrv;
  Ara hun;
  Ara ita;
  Ara? jpn;
  Ara kor;
  Ara nld;
  Ara? per;
  Ara pol;
  Ara por;
  Ara rus;
  Ara slk;
  Ara spa;
  Ara srp;
  Ara swe;
  Ara tur;
  Ara urd;
  Ara? zho;

  Translations({
    required this.ara,
    required this.bre,
    required this.ces,
    required this.cym,
    required this.deu,
    required this.est,
    required this.fin,
    required this.fra,
    this.hrv,
    required this.hun,
    required this.ita,
    this.jpn,
    required this.kor,
    required this.nld,
    this.per,
    required this.pol,
    required this.por,
    required this.rus,
    required this.slk,
    required this.spa,
    required this.srp,
    required this.swe,
    required this.tur,
    required this.urd,
    this.zho,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        ara: Ara.fromJson(json["ara"]),
        bre: Ara.fromJson(json["bre"]),
        ces: Ara.fromJson(json["ces"]),
        cym: Ara.fromJson(json["cym"]),
        deu: Ara.fromJson(json["deu"]),
        est: Ara.fromJson(json["est"]),
        fin: Ara.fromJson(json["fin"]),
        fra: Ara.fromJson(json["fra"]),
        hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
        hun: Ara.fromJson(json["hun"]),
        ita: Ara.fromJson(json["ita"]),
        jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
        kor: Ara.fromJson(json["kor"]),
        nld: Ara.fromJson(json["nld"]),
        per: json["per"] == null ? null : Ara.fromJson(json["per"]),
        pol: Ara.fromJson(json["pol"]),
        por: Ara.fromJson(json["por"]),
        rus: Ara.fromJson(json["rus"]),
        slk: Ara.fromJson(json["slk"]),
        spa: Ara.fromJson(json["spa"]),
        srp: Ara.fromJson(json["srp"]),
        swe: Ara.fromJson(json["swe"]),
        tur: Ara.fromJson(json["tur"]),
        urd: Ara.fromJson(json["urd"]),
        zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
      );

  Map<String, dynamic> toJson() => {
        "ara": ara.toJson(),
        "bre": bre.toJson(),
        "ces": ces.toJson(),
        "cym": cym.toJson(),
        "deu": deu.toJson(),
        "est": est.toJson(),
        "fin": fin.toJson(),
        "fra": fra.toJson(),
        "hrv": hrv?.toJson(),
        "hun": hun.toJson(),
        "ita": ita.toJson(),
        "jpn": jpn?.toJson(),
        "kor": kor.toJson(),
        "nld": nld.toJson(),
        "per": per?.toJson(),
        "pol": pol.toJson(),
        "por": por.toJson(),
        "rus": rus.toJson(),
        "slk": slk.toJson(),
        "spa": spa.toJson(),
        "srp": srp.toJson(),
        "swe": swe.toJson(),
        "tur": tur.toJson(),
        "urd": urd.toJson(),
        "zho": zho?.toJson(),
      };
}
