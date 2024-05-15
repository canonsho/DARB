import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _TripSummaryJeddahEco = prefs
              .getStringList('ff_TripSummaryJeddahEco')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSummaryJeddahEco;
    });
    _safeInit(() {
      _TripSumJeddahStanderd = prefs
              .getStringList('ff_TripSumJeddahStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumJeddahStanderd;
    });
    _safeInit(() {
      _TripSummaryJedLux = prefs
              .getStringList('ff_TripSummaryJedLux')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSummaryJedLux;
    });
    _safeInit(() {
      _TripSumMakkahEco = prefs
              .getStringList('ff_TripSumMakkahEco')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMakkahEco;
    });
    _safeInit(() {
      _TripSumMakkahStan = prefs
              .getStringList('ff_TripSumMakkahStan')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMakkahStan;
    });
    _safeInit(() {
      _TripSumMakkahLuxury = prefs
              .getStringList('ff_TripSumMakkahLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMakkahLuxury;
    });
    _safeInit(() {
      _TripSumTaifEco = prefs
              .getStringList('ff_TripSumTaifEco')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTaifEco;
    });
    _safeInit(() {
      _TripSumTaifStanderd = prefs
              .getStringList('ff_TripSumTaifStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTaifStanderd;
    });
    _safeInit(() {
      _TripSumTaifLuxury = prefs
              .getStringList('ff_TripSumTaifLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTaifLuxury;
    });
    _safeInit(() {
      _TripSumMadinaEconomy = prefs
              .getStringList('ff_TripSumMadinaEconomy')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMadinaEconomy;
    });
    _safeInit(() {
      _TripSumMadinaStanderd = prefs
              .getStringList('ff_TripSumMadinaStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMadinaStanderd;
    });
    _safeInit(() {
      _TripSumMadinaLuxury = prefs
              .getStringList('ff_TripSumMadinaLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumMadinaLuxury;
    });
    _safeInit(() {
      _TripSumTabukEconomy = prefs
              .getStringList('ff_TripSumTabukEconomy')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTabukEconomy;
    });
    _safeInit(() {
      _TripSumTabukStanderd = prefs
              .getStringList('ff_TripSumTabukStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTabukStanderd;
    });
    _safeInit(() {
      _TripSumTabukLuxury = prefs
              .getStringList('ff_TripSumTabukLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumTabukLuxury;
    });
    _safeInit(() {
      _TripSumDammamEconomy = prefs
              .getStringList('ff_TripSumDammamEconomy')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumDammamEconomy;
    });
    _safeInit(() {
      _TripSumDammamStanderd = prefs
              .getStringList('ff_TripSumDammamStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumDammamStanderd;
    });
    _safeInit(() {
      _TripSumDammamLuxury = prefs
              .getStringList('ff_TripSumDammamLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumDammamLuxury;
    });
    _safeInit(() {
      _TripSumRiyadhEconomy = prefs
              .getStringList('ff_TripSumRiyadhEconomy')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumRiyadhEconomy;
    });
    _safeInit(() {
      _TripSumRiyadhStanderd = prefs
              .getStringList('ff_TripSumRiyadhStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumRiyadhStanderd;
    });
    _safeInit(() {
      _TripSumRuyadhLuxury = prefs
              .getStringList('ff_TripSumRuyadhLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumRuyadhLuxury;
    });
    _safeInit(() {
      _TripSumAbhaEconomy = prefs
              .getStringList('ff_TripSumAbhaEconomy')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumAbhaEconomy;
    });
    _safeInit(() {
      _TripSumAbhaStanderd = prefs
              .getStringList('ff_TripSumAbhaStanderd')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumAbhaStanderd;
    });
    _safeInit(() {
      _TripSumAbhaLuxury = prefs
              .getStringList('ff_TripSumAbhaLuxury')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumAbhaLuxury;
    });
    _safeInit(() {
      _TripSumSearchAll = prefs
              .getStringList('ff_TripSumSearchAll')
              ?.map((path) => path.ref)
              .toList() ??
          _TripSumSearchAll;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _TripSummaryJeddahEco = [];
  List<DocumentReference> get TripSummaryJeddahEco => _TripSummaryJeddahEco;
  set TripSummaryJeddahEco(List<DocumentReference> value) {
    _TripSummaryJeddahEco = value;
    prefs.setStringList(
        'ff_TripSummaryJeddahEco', value.map((x) => x.path).toList());
  }

  void addToTripSummaryJeddahEco(DocumentReference value) {
    _TripSummaryJeddahEco.add(value);
    prefs.setStringList('ff_TripSummaryJeddahEco',
        _TripSummaryJeddahEco.map((x) => x.path).toList());
  }

  void removeFromTripSummaryJeddahEco(DocumentReference value) {
    _TripSummaryJeddahEco.remove(value);
    prefs.setStringList('ff_TripSummaryJeddahEco',
        _TripSummaryJeddahEco.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSummaryJeddahEco(int index) {
    _TripSummaryJeddahEco.removeAt(index);
    prefs.setStringList('ff_TripSummaryJeddahEco',
        _TripSummaryJeddahEco.map((x) => x.path).toList());
  }

  void updateTripSummaryJeddahEcoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSummaryJeddahEco[index] = updateFn(_TripSummaryJeddahEco[index]);
    prefs.setStringList('ff_TripSummaryJeddahEco',
        _TripSummaryJeddahEco.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSummaryJeddahEco(
      int index, DocumentReference value) {
    _TripSummaryJeddahEco.insert(index, value);
    prefs.setStringList('ff_TripSummaryJeddahEco',
        _TripSummaryJeddahEco.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumJeddahStanderd = [];
  List<DocumentReference> get TripSumJeddahStanderd => _TripSumJeddahStanderd;
  set TripSumJeddahStanderd(List<DocumentReference> value) {
    _TripSumJeddahStanderd = value;
    prefs.setStringList(
        'ff_TripSumJeddahStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumJeddahStanderd(DocumentReference value) {
    _TripSumJeddahStanderd.add(value);
    prefs.setStringList('ff_TripSumJeddahStanderd',
        _TripSumJeddahStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumJeddahStanderd(DocumentReference value) {
    _TripSumJeddahStanderd.remove(value);
    prefs.setStringList('ff_TripSumJeddahStanderd',
        _TripSumJeddahStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumJeddahStanderd(int index) {
    _TripSumJeddahStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumJeddahStanderd',
        _TripSumJeddahStanderd.map((x) => x.path).toList());
  }

  void updateTripSumJeddahStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumJeddahStanderd[index] = updateFn(_TripSumJeddahStanderd[index]);
    prefs.setStringList('ff_TripSumJeddahStanderd',
        _TripSumJeddahStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumJeddahStanderd(
      int index, DocumentReference value) {
    _TripSumJeddahStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumJeddahStanderd',
        _TripSumJeddahStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSummaryJedLux = [];
  List<DocumentReference> get TripSummaryJedLux => _TripSummaryJedLux;
  set TripSummaryJedLux(List<DocumentReference> value) {
    _TripSummaryJedLux = value;
    prefs.setStringList(
        'ff_TripSummaryJedLux', value.map((x) => x.path).toList());
  }

  void addToTripSummaryJedLux(DocumentReference value) {
    _TripSummaryJedLux.add(value);
    prefs.setStringList(
        'ff_TripSummaryJedLux', _TripSummaryJedLux.map((x) => x.path).toList());
  }

  void removeFromTripSummaryJedLux(DocumentReference value) {
    _TripSummaryJedLux.remove(value);
    prefs.setStringList(
        'ff_TripSummaryJedLux', _TripSummaryJedLux.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSummaryJedLux(int index) {
    _TripSummaryJedLux.removeAt(index);
    prefs.setStringList(
        'ff_TripSummaryJedLux', _TripSummaryJedLux.map((x) => x.path).toList());
  }

  void updateTripSummaryJedLuxAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSummaryJedLux[index] = updateFn(_TripSummaryJedLux[index]);
    prefs.setStringList(
        'ff_TripSummaryJedLux', _TripSummaryJedLux.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSummaryJedLux(int index, DocumentReference value) {
    _TripSummaryJedLux.insert(index, value);
    prefs.setStringList(
        'ff_TripSummaryJedLux', _TripSummaryJedLux.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMakkahEco = [];
  List<DocumentReference> get TripSumMakkahEco => _TripSumMakkahEco;
  set TripSumMakkahEco(List<DocumentReference> value) {
    _TripSumMakkahEco = value;
    prefs.setStringList(
        'ff_TripSumMakkahEco', value.map((x) => x.path).toList());
  }

  void addToTripSumMakkahEco(DocumentReference value) {
    _TripSumMakkahEco.add(value);
    prefs.setStringList(
        'ff_TripSumMakkahEco', _TripSumMakkahEco.map((x) => x.path).toList());
  }

  void removeFromTripSumMakkahEco(DocumentReference value) {
    _TripSumMakkahEco.remove(value);
    prefs.setStringList(
        'ff_TripSumMakkahEco', _TripSumMakkahEco.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMakkahEco(int index) {
    _TripSumMakkahEco.removeAt(index);
    prefs.setStringList(
        'ff_TripSumMakkahEco', _TripSumMakkahEco.map((x) => x.path).toList());
  }

  void updateTripSumMakkahEcoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMakkahEco[index] = updateFn(_TripSumMakkahEco[index]);
    prefs.setStringList(
        'ff_TripSumMakkahEco', _TripSumMakkahEco.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMakkahEco(int index, DocumentReference value) {
    _TripSumMakkahEco.insert(index, value);
    prefs.setStringList(
        'ff_TripSumMakkahEco', _TripSumMakkahEco.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMakkahStan = [];
  List<DocumentReference> get TripSumMakkahStan => _TripSumMakkahStan;
  set TripSumMakkahStan(List<DocumentReference> value) {
    _TripSumMakkahStan = value;
    prefs.setStringList(
        'ff_TripSumMakkahStan', value.map((x) => x.path).toList());
  }

  void addToTripSumMakkahStan(DocumentReference value) {
    _TripSumMakkahStan.add(value);
    prefs.setStringList(
        'ff_TripSumMakkahStan', _TripSumMakkahStan.map((x) => x.path).toList());
  }

  void removeFromTripSumMakkahStan(DocumentReference value) {
    _TripSumMakkahStan.remove(value);
    prefs.setStringList(
        'ff_TripSumMakkahStan', _TripSumMakkahStan.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMakkahStan(int index) {
    _TripSumMakkahStan.removeAt(index);
    prefs.setStringList(
        'ff_TripSumMakkahStan', _TripSumMakkahStan.map((x) => x.path).toList());
  }

  void updateTripSumMakkahStanAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMakkahStan[index] = updateFn(_TripSumMakkahStan[index]);
    prefs.setStringList(
        'ff_TripSumMakkahStan', _TripSumMakkahStan.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMakkahStan(int index, DocumentReference value) {
    _TripSumMakkahStan.insert(index, value);
    prefs.setStringList(
        'ff_TripSumMakkahStan', _TripSumMakkahStan.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMakkahLuxury = [];
  List<DocumentReference> get TripSumMakkahLuxury => _TripSumMakkahLuxury;
  set TripSumMakkahLuxury(List<DocumentReference> value) {
    _TripSumMakkahLuxury = value;
    prefs.setStringList(
        'ff_TripSumMakkahLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumMakkahLuxury(DocumentReference value) {
    _TripSumMakkahLuxury.add(value);
    prefs.setStringList('ff_TripSumMakkahLuxury',
        _TripSumMakkahLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumMakkahLuxury(DocumentReference value) {
    _TripSumMakkahLuxury.remove(value);
    prefs.setStringList('ff_TripSumMakkahLuxury',
        _TripSumMakkahLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMakkahLuxury(int index) {
    _TripSumMakkahLuxury.removeAt(index);
    prefs.setStringList('ff_TripSumMakkahLuxury',
        _TripSumMakkahLuxury.map((x) => x.path).toList());
  }

  void updateTripSumMakkahLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMakkahLuxury[index] = updateFn(_TripSumMakkahLuxury[index]);
    prefs.setStringList('ff_TripSumMakkahLuxury',
        _TripSumMakkahLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMakkahLuxury(
      int index, DocumentReference value) {
    _TripSumMakkahLuxury.insert(index, value);
    prefs.setStringList('ff_TripSumMakkahLuxury',
        _TripSumMakkahLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTaifEco = [];
  List<DocumentReference> get TripSumTaifEco => _TripSumTaifEco;
  set TripSumTaifEco(List<DocumentReference> value) {
    _TripSumTaifEco = value;
    prefs.setStringList(
        'ff_TripSumTaifEco', value.map((x) => x.path).toList());
  }

  void addToTripSumTaifEco(DocumentReference value) {
    _TripSumTaifEco.add(value);
    prefs.setStringList(
        'ff_TripSumTaifEco', _TripSumTaifEco.map((x) => x.path).toList());
  }

  void removeFromTripSumTaifEco(DocumentReference value) {
    _TripSumTaifEco.remove(value);
    prefs.setStringList(
        'ff_TripSumTaifEco', _TripSumTaifEco.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTaifEco(int index) {
    _TripSumTaifEco.removeAt(index);
    prefs.setStringList(
        'ff_TripSumTaifEco', _TripSumTaifEco.map((x) => x.path).toList());
  }

  void updateTripSumTaifEcoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTaifEco[index] = updateFn(_TripSumTaifEco[index]);
    prefs.setStringList(
        'ff_TripSumTaifEco', _TripSumTaifEco.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTaifEco(int index, DocumentReference value) {
    _TripSumTaifEco.insert(index, value);
    prefs.setStringList(
        'ff_TripSumTaifEco', _TripSumTaifEco.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTaifStanderd = [];
  List<DocumentReference> get TripSumTaifStanderd => _TripSumTaifStanderd;
  set TripSumTaifStanderd(List<DocumentReference> value) {
    _TripSumTaifStanderd = value;
    prefs.setStringList(
        'ff_TripSumTaifStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumTaifStanderd(DocumentReference value) {
    _TripSumTaifStanderd.add(value);
    prefs.setStringList('ff_TripSumTaifStanderd',
        _TripSumTaifStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumTaifStanderd(DocumentReference value) {
    _TripSumTaifStanderd.remove(value);
    prefs.setStringList('ff_TripSumTaifStanderd',
        _TripSumTaifStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTaifStanderd(int index) {
    _TripSumTaifStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumTaifStanderd',
        _TripSumTaifStanderd.map((x) => x.path).toList());
  }

  void updateTripSumTaifStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTaifStanderd[index] = updateFn(_TripSumTaifStanderd[index]);
    prefs.setStringList('ff_TripSumTaifStanderd',
        _TripSumTaifStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTaifStanderd(
      int index, DocumentReference value) {
    _TripSumTaifStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumTaifStanderd',
        _TripSumTaifStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTaifLuxury = [];
  List<DocumentReference> get TripSumTaifLuxury => _TripSumTaifLuxury;
  set TripSumTaifLuxury(List<DocumentReference> value) {
    _TripSumTaifLuxury = value;
    prefs.setStringList(
        'ff_TripSumTaifLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumTaifLuxury(DocumentReference value) {
    _TripSumTaifLuxury.add(value);
    prefs.setStringList(
        'ff_TripSumTaifLuxury', _TripSumTaifLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumTaifLuxury(DocumentReference value) {
    _TripSumTaifLuxury.remove(value);
    prefs.setStringList(
        'ff_TripSumTaifLuxury', _TripSumTaifLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTaifLuxury(int index) {
    _TripSumTaifLuxury.removeAt(index);
    prefs.setStringList(
        'ff_TripSumTaifLuxury', _TripSumTaifLuxury.map((x) => x.path).toList());
  }

  void updateTripSumTaifLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTaifLuxury[index] = updateFn(_TripSumTaifLuxury[index]);
    prefs.setStringList(
        'ff_TripSumTaifLuxury', _TripSumTaifLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTaifLuxury(int index, DocumentReference value) {
    _TripSumTaifLuxury.insert(index, value);
    prefs.setStringList(
        'ff_TripSumTaifLuxury', _TripSumTaifLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMadinaEconomy = [];
  List<DocumentReference> get TripSumMadinaEconomy => _TripSumMadinaEconomy;
  set TripSumMadinaEconomy(List<DocumentReference> value) {
    _TripSumMadinaEconomy = value;
    prefs.setStringList(
        'ff_TripSumMadinaEconomy', value.map((x) => x.path).toList());
  }

  void addToTripSumMadinaEconomy(DocumentReference value) {
    _TripSumMadinaEconomy.add(value);
    prefs.setStringList('ff_TripSumMadinaEconomy',
        _TripSumMadinaEconomy.map((x) => x.path).toList());
  }

  void removeFromTripSumMadinaEconomy(DocumentReference value) {
    _TripSumMadinaEconomy.remove(value);
    prefs.setStringList('ff_TripSumMadinaEconomy',
        _TripSumMadinaEconomy.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMadinaEconomy(int index) {
    _TripSumMadinaEconomy.removeAt(index);
    prefs.setStringList('ff_TripSumMadinaEconomy',
        _TripSumMadinaEconomy.map((x) => x.path).toList());
  }

  void updateTripSumMadinaEconomyAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMadinaEconomy[index] = updateFn(_TripSumMadinaEconomy[index]);
    prefs.setStringList('ff_TripSumMadinaEconomy',
        _TripSumMadinaEconomy.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMadinaEconomy(
      int index, DocumentReference value) {
    _TripSumMadinaEconomy.insert(index, value);
    prefs.setStringList('ff_TripSumMadinaEconomy',
        _TripSumMadinaEconomy.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMadinaStanderd = [];
  List<DocumentReference> get TripSumMadinaStanderd => _TripSumMadinaStanderd;
  set TripSumMadinaStanderd(List<DocumentReference> value) {
    _TripSumMadinaStanderd = value;
    prefs.setStringList(
        'ff_TripSumMadinaStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumMadinaStanderd(DocumentReference value) {
    _TripSumMadinaStanderd.add(value);
    prefs.setStringList('ff_TripSumMadinaStanderd',
        _TripSumMadinaStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumMadinaStanderd(DocumentReference value) {
    _TripSumMadinaStanderd.remove(value);
    prefs.setStringList('ff_TripSumMadinaStanderd',
        _TripSumMadinaStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMadinaStanderd(int index) {
    _TripSumMadinaStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumMadinaStanderd',
        _TripSumMadinaStanderd.map((x) => x.path).toList());
  }

  void updateTripSumMadinaStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMadinaStanderd[index] = updateFn(_TripSumMadinaStanderd[index]);
    prefs.setStringList('ff_TripSumMadinaStanderd',
        _TripSumMadinaStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMadinaStanderd(
      int index, DocumentReference value) {
    _TripSumMadinaStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumMadinaStanderd',
        _TripSumMadinaStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumMadinaLuxury = [];
  List<DocumentReference> get TripSumMadinaLuxury => _TripSumMadinaLuxury;
  set TripSumMadinaLuxury(List<DocumentReference> value) {
    _TripSumMadinaLuxury = value;
    prefs.setStringList(
        'ff_TripSumMadinaLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumMadinaLuxury(DocumentReference value) {
    _TripSumMadinaLuxury.add(value);
    prefs.setStringList('ff_TripSumMadinaLuxury',
        _TripSumMadinaLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumMadinaLuxury(DocumentReference value) {
    _TripSumMadinaLuxury.remove(value);
    prefs.setStringList('ff_TripSumMadinaLuxury',
        _TripSumMadinaLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumMadinaLuxury(int index) {
    _TripSumMadinaLuxury.removeAt(index);
    prefs.setStringList('ff_TripSumMadinaLuxury',
        _TripSumMadinaLuxury.map((x) => x.path).toList());
  }

  void updateTripSumMadinaLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumMadinaLuxury[index] = updateFn(_TripSumMadinaLuxury[index]);
    prefs.setStringList('ff_TripSumMadinaLuxury',
        _TripSumMadinaLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumMadinaLuxury(
      int index, DocumentReference value) {
    _TripSumMadinaLuxury.insert(index, value);
    prefs.setStringList('ff_TripSumMadinaLuxury',
        _TripSumMadinaLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTabukEconomy = [];
  List<DocumentReference> get TripSumTabukEconomy => _TripSumTabukEconomy;
  set TripSumTabukEconomy(List<DocumentReference> value) {
    _TripSumTabukEconomy = value;
    prefs.setStringList(
        'ff_TripSumTabukEconomy', value.map((x) => x.path).toList());
  }

  void addToTripSumTabukEconomy(DocumentReference value) {
    _TripSumTabukEconomy.add(value);
    prefs.setStringList('ff_TripSumTabukEconomy',
        _TripSumTabukEconomy.map((x) => x.path).toList());
  }

  void removeFromTripSumTabukEconomy(DocumentReference value) {
    _TripSumTabukEconomy.remove(value);
    prefs.setStringList('ff_TripSumTabukEconomy',
        _TripSumTabukEconomy.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTabukEconomy(int index) {
    _TripSumTabukEconomy.removeAt(index);
    prefs.setStringList('ff_TripSumTabukEconomy',
        _TripSumTabukEconomy.map((x) => x.path).toList());
  }

  void updateTripSumTabukEconomyAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTabukEconomy[index] = updateFn(_TripSumTabukEconomy[index]);
    prefs.setStringList('ff_TripSumTabukEconomy',
        _TripSumTabukEconomy.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTabukEconomy(
      int index, DocumentReference value) {
    _TripSumTabukEconomy.insert(index, value);
    prefs.setStringList('ff_TripSumTabukEconomy',
        _TripSumTabukEconomy.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTabukStanderd = [];
  List<DocumentReference> get TripSumTabukStanderd => _TripSumTabukStanderd;
  set TripSumTabukStanderd(List<DocumentReference> value) {
    _TripSumTabukStanderd = value;
    prefs.setStringList(
        'ff_TripSumTabukStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumTabukStanderd(DocumentReference value) {
    _TripSumTabukStanderd.add(value);
    prefs.setStringList('ff_TripSumTabukStanderd',
        _TripSumTabukStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumTabukStanderd(DocumentReference value) {
    _TripSumTabukStanderd.remove(value);
    prefs.setStringList('ff_TripSumTabukStanderd',
        _TripSumTabukStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTabukStanderd(int index) {
    _TripSumTabukStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumTabukStanderd',
        _TripSumTabukStanderd.map((x) => x.path).toList());
  }

  void updateTripSumTabukStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTabukStanderd[index] = updateFn(_TripSumTabukStanderd[index]);
    prefs.setStringList('ff_TripSumTabukStanderd',
        _TripSumTabukStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTabukStanderd(
      int index, DocumentReference value) {
    _TripSumTabukStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumTabukStanderd',
        _TripSumTabukStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumTabukLuxury = [];
  List<DocumentReference> get TripSumTabukLuxury => _TripSumTabukLuxury;
  set TripSumTabukLuxury(List<DocumentReference> value) {
    _TripSumTabukLuxury = value;
    prefs.setStringList(
        'ff_TripSumTabukLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumTabukLuxury(DocumentReference value) {
    _TripSumTabukLuxury.add(value);
    prefs.setStringList('ff_TripSumTabukLuxury',
        _TripSumTabukLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumTabukLuxury(DocumentReference value) {
    _TripSumTabukLuxury.remove(value);
    prefs.setStringList('ff_TripSumTabukLuxury',
        _TripSumTabukLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumTabukLuxury(int index) {
    _TripSumTabukLuxury.removeAt(index);
    prefs.setStringList('ff_TripSumTabukLuxury',
        _TripSumTabukLuxury.map((x) => x.path).toList());
  }

  void updateTripSumTabukLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumTabukLuxury[index] = updateFn(_TripSumTabukLuxury[index]);
    prefs.setStringList('ff_TripSumTabukLuxury',
        _TripSumTabukLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumTabukLuxury(int index, DocumentReference value) {
    _TripSumTabukLuxury.insert(index, value);
    prefs.setStringList('ff_TripSumTabukLuxury',
        _TripSumTabukLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumDammamEconomy = [];
  List<DocumentReference> get TripSumDammamEconomy => _TripSumDammamEconomy;
  set TripSumDammamEconomy(List<DocumentReference> value) {
    _TripSumDammamEconomy = value;
    prefs.setStringList(
        'ff_TripSumDammamEconomy', value.map((x) => x.path).toList());
  }

  void addToTripSumDammamEconomy(DocumentReference value) {
    _TripSumDammamEconomy.add(value);
    prefs.setStringList('ff_TripSumDammamEconomy',
        _TripSumDammamEconomy.map((x) => x.path).toList());
  }

  void removeFromTripSumDammamEconomy(DocumentReference value) {
    _TripSumDammamEconomy.remove(value);
    prefs.setStringList('ff_TripSumDammamEconomy',
        _TripSumDammamEconomy.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumDammamEconomy(int index) {
    _TripSumDammamEconomy.removeAt(index);
    prefs.setStringList('ff_TripSumDammamEconomy',
        _TripSumDammamEconomy.map((x) => x.path).toList());
  }

  void updateTripSumDammamEconomyAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumDammamEconomy[index] = updateFn(_TripSumDammamEconomy[index]);
    prefs.setStringList('ff_TripSumDammamEconomy',
        _TripSumDammamEconomy.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumDammamEconomy(
      int index, DocumentReference value) {
    _TripSumDammamEconomy.insert(index, value);
    prefs.setStringList('ff_TripSumDammamEconomy',
        _TripSumDammamEconomy.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumDammamStanderd = [];
  List<DocumentReference> get TripSumDammamStanderd => _TripSumDammamStanderd;
  set TripSumDammamStanderd(List<DocumentReference> value) {
    _TripSumDammamStanderd = value;
    prefs.setStringList(
        'ff_TripSumDammamStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumDammamStanderd(DocumentReference value) {
    _TripSumDammamStanderd.add(value);
    prefs.setStringList('ff_TripSumDammamStanderd',
        _TripSumDammamStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumDammamStanderd(DocumentReference value) {
    _TripSumDammamStanderd.remove(value);
    prefs.setStringList('ff_TripSumDammamStanderd',
        _TripSumDammamStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumDammamStanderd(int index) {
    _TripSumDammamStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumDammamStanderd',
        _TripSumDammamStanderd.map((x) => x.path).toList());
  }

  void updateTripSumDammamStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumDammamStanderd[index] = updateFn(_TripSumDammamStanderd[index]);
    prefs.setStringList('ff_TripSumDammamStanderd',
        _TripSumDammamStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumDammamStanderd(
      int index, DocumentReference value) {
    _TripSumDammamStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumDammamStanderd',
        _TripSumDammamStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumDammamLuxury = [];
  List<DocumentReference> get TripSumDammamLuxury => _TripSumDammamLuxury;
  set TripSumDammamLuxury(List<DocumentReference> value) {
    _TripSumDammamLuxury = value;
    prefs.setStringList(
        'ff_TripSumDammamLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumDammamLuxury(DocumentReference value) {
    _TripSumDammamLuxury.add(value);
    prefs.setStringList('ff_TripSumDammamLuxury',
        _TripSumDammamLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumDammamLuxury(DocumentReference value) {
    _TripSumDammamLuxury.remove(value);
    prefs.setStringList('ff_TripSumDammamLuxury',
        _TripSumDammamLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumDammamLuxury(int index) {
    _TripSumDammamLuxury.removeAt(index);
    prefs.setStringList('ff_TripSumDammamLuxury',
        _TripSumDammamLuxury.map((x) => x.path).toList());
  }

  void updateTripSumDammamLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumDammamLuxury[index] = updateFn(_TripSumDammamLuxury[index]);
    prefs.setStringList('ff_TripSumDammamLuxury',
        _TripSumDammamLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumDammamLuxury(
      int index, DocumentReference value) {
    _TripSumDammamLuxury.insert(index, value);
    prefs.setStringList('ff_TripSumDammamLuxury',
        _TripSumDammamLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumRiyadhEconomy = [];
  List<DocumentReference> get TripSumRiyadhEconomy => _TripSumRiyadhEconomy;
  set TripSumRiyadhEconomy(List<DocumentReference> value) {
    _TripSumRiyadhEconomy = value;
    prefs.setStringList(
        'ff_TripSumRiyadhEconomy', value.map((x) => x.path).toList());
  }

  void addToTripSumRiyadhEconomy(DocumentReference value) {
    _TripSumRiyadhEconomy.add(value);
    prefs.setStringList('ff_TripSumRiyadhEconomy',
        _TripSumRiyadhEconomy.map((x) => x.path).toList());
  }

  void removeFromTripSumRiyadhEconomy(DocumentReference value) {
    _TripSumRiyadhEconomy.remove(value);
    prefs.setStringList('ff_TripSumRiyadhEconomy',
        _TripSumRiyadhEconomy.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumRiyadhEconomy(int index) {
    _TripSumRiyadhEconomy.removeAt(index);
    prefs.setStringList('ff_TripSumRiyadhEconomy',
        _TripSumRiyadhEconomy.map((x) => x.path).toList());
  }

  void updateTripSumRiyadhEconomyAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumRiyadhEconomy[index] = updateFn(_TripSumRiyadhEconomy[index]);
    prefs.setStringList('ff_TripSumRiyadhEconomy',
        _TripSumRiyadhEconomy.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumRiyadhEconomy(
      int index, DocumentReference value) {
    _TripSumRiyadhEconomy.insert(index, value);
    prefs.setStringList('ff_TripSumRiyadhEconomy',
        _TripSumRiyadhEconomy.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumRiyadhStanderd = [];
  List<DocumentReference> get TripSumRiyadhStanderd => _TripSumRiyadhStanderd;
  set TripSumRiyadhStanderd(List<DocumentReference> value) {
    _TripSumRiyadhStanderd = value;
    prefs.setStringList(
        'ff_TripSumRiyadhStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumRiyadhStanderd(DocumentReference value) {
    _TripSumRiyadhStanderd.add(value);
    prefs.setStringList('ff_TripSumRiyadhStanderd',
        _TripSumRiyadhStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumRiyadhStanderd(DocumentReference value) {
    _TripSumRiyadhStanderd.remove(value);
    prefs.setStringList('ff_TripSumRiyadhStanderd',
        _TripSumRiyadhStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumRiyadhStanderd(int index) {
    _TripSumRiyadhStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumRiyadhStanderd',
        _TripSumRiyadhStanderd.map((x) => x.path).toList());
  }

  void updateTripSumRiyadhStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumRiyadhStanderd[index] = updateFn(_TripSumRiyadhStanderd[index]);
    prefs.setStringList('ff_TripSumRiyadhStanderd',
        _TripSumRiyadhStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumRiyadhStanderd(
      int index, DocumentReference value) {
    _TripSumRiyadhStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumRiyadhStanderd',
        _TripSumRiyadhStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumRuyadhLuxury = [];
  List<DocumentReference> get TripSumRuyadhLuxury => _TripSumRuyadhLuxury;
  set TripSumRuyadhLuxury(List<DocumentReference> value) {
    _TripSumRuyadhLuxury = value;
    prefs.setStringList(
        'ff_TripSumRuyadhLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumRuyadhLuxury(DocumentReference value) {
    _TripSumRuyadhLuxury.add(value);
    prefs.setStringList('ff_TripSumRuyadhLuxury',
        _TripSumRuyadhLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumRuyadhLuxury(DocumentReference value) {
    _TripSumRuyadhLuxury.remove(value);
    prefs.setStringList('ff_TripSumRuyadhLuxury',
        _TripSumRuyadhLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumRuyadhLuxury(int index) {
    _TripSumRuyadhLuxury.removeAt(index);
    prefs.setStringList('ff_TripSumRuyadhLuxury',
        _TripSumRuyadhLuxury.map((x) => x.path).toList());
  }

  void updateTripSumRuyadhLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumRuyadhLuxury[index] = updateFn(_TripSumRuyadhLuxury[index]);
    prefs.setStringList('ff_TripSumRuyadhLuxury',
        _TripSumRuyadhLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumRuyadhLuxury(
      int index, DocumentReference value) {
    _TripSumRuyadhLuxury.insert(index, value);
    prefs.setStringList('ff_TripSumRuyadhLuxury',
        _TripSumRuyadhLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumAbhaEconomy = [];
  List<DocumentReference> get TripSumAbhaEconomy => _TripSumAbhaEconomy;
  set TripSumAbhaEconomy(List<DocumentReference> value) {
    _TripSumAbhaEconomy = value;
    prefs.setStringList(
        'ff_TripSumAbhaEconomy', value.map((x) => x.path).toList());
  }

  void addToTripSumAbhaEconomy(DocumentReference value) {
    _TripSumAbhaEconomy.add(value);
    prefs.setStringList('ff_TripSumAbhaEconomy',
        _TripSumAbhaEconomy.map((x) => x.path).toList());
  }

  void removeFromTripSumAbhaEconomy(DocumentReference value) {
    _TripSumAbhaEconomy.remove(value);
    prefs.setStringList('ff_TripSumAbhaEconomy',
        _TripSumAbhaEconomy.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumAbhaEconomy(int index) {
    _TripSumAbhaEconomy.removeAt(index);
    prefs.setStringList('ff_TripSumAbhaEconomy',
        _TripSumAbhaEconomy.map((x) => x.path).toList());
  }

  void updateTripSumAbhaEconomyAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumAbhaEconomy[index] = updateFn(_TripSumAbhaEconomy[index]);
    prefs.setStringList('ff_TripSumAbhaEconomy',
        _TripSumAbhaEconomy.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumAbhaEconomy(int index, DocumentReference value) {
    _TripSumAbhaEconomy.insert(index, value);
    prefs.setStringList('ff_TripSumAbhaEconomy',
        _TripSumAbhaEconomy.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumAbhaStanderd = [];
  List<DocumentReference> get TripSumAbhaStanderd => _TripSumAbhaStanderd;
  set TripSumAbhaStanderd(List<DocumentReference> value) {
    _TripSumAbhaStanderd = value;
    prefs.setStringList(
        'ff_TripSumAbhaStanderd', value.map((x) => x.path).toList());
  }

  void addToTripSumAbhaStanderd(DocumentReference value) {
    _TripSumAbhaStanderd.add(value);
    prefs.setStringList('ff_TripSumAbhaStanderd',
        _TripSumAbhaStanderd.map((x) => x.path).toList());
  }

  void removeFromTripSumAbhaStanderd(DocumentReference value) {
    _TripSumAbhaStanderd.remove(value);
    prefs.setStringList('ff_TripSumAbhaStanderd',
        _TripSumAbhaStanderd.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumAbhaStanderd(int index) {
    _TripSumAbhaStanderd.removeAt(index);
    prefs.setStringList('ff_TripSumAbhaStanderd',
        _TripSumAbhaStanderd.map((x) => x.path).toList());
  }

  void updateTripSumAbhaStanderdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumAbhaStanderd[index] = updateFn(_TripSumAbhaStanderd[index]);
    prefs.setStringList('ff_TripSumAbhaStanderd',
        _TripSumAbhaStanderd.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumAbhaStanderd(
      int index, DocumentReference value) {
    _TripSumAbhaStanderd.insert(index, value);
    prefs.setStringList('ff_TripSumAbhaStanderd',
        _TripSumAbhaStanderd.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumAbhaLuxury = [];
  List<DocumentReference> get TripSumAbhaLuxury => _TripSumAbhaLuxury;
  set TripSumAbhaLuxury(List<DocumentReference> value) {
    _TripSumAbhaLuxury = value;
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', value.map((x) => x.path).toList());
  }

  void addToTripSumAbhaLuxury(DocumentReference value) {
    _TripSumAbhaLuxury.add(value);
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', _TripSumAbhaLuxury.map((x) => x.path).toList());
  }

  void removeFromTripSumAbhaLuxury(DocumentReference value) {
    _TripSumAbhaLuxury.remove(value);
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', _TripSumAbhaLuxury.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumAbhaLuxury(int index) {
    _TripSumAbhaLuxury.removeAt(index);
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', _TripSumAbhaLuxury.map((x) => x.path).toList());
  }

  void updateTripSumAbhaLuxuryAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumAbhaLuxury[index] = updateFn(_TripSumAbhaLuxury[index]);
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', _TripSumAbhaLuxury.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumAbhaLuxury(int index, DocumentReference value) {
    _TripSumAbhaLuxury.insert(index, value);
    prefs.setStringList(
        'ff_TripSumAbhaLuxury', _TripSumAbhaLuxury.map((x) => x.path).toList());
  }

  List<DocumentReference> _TripSumSearchAll = [];
  List<DocumentReference> get TripSumSearchAll => _TripSumSearchAll;
  set TripSumSearchAll(List<DocumentReference> value) {
    _TripSumSearchAll = value;
    prefs.setStringList(
        'ff_TripSumSearchAll', value.map((x) => x.path).toList());
  }

  void addToTripSumSearchAll(DocumentReference value) {
    _TripSumSearchAll.add(value);
    prefs.setStringList(
        'ff_TripSumSearchAll', _TripSumSearchAll.map((x) => x.path).toList());
  }

  void removeFromTripSumSearchAll(DocumentReference value) {
    _TripSumSearchAll.remove(value);
    prefs.setStringList(
        'ff_TripSumSearchAll', _TripSumSearchAll.map((x) => x.path).toList());
  }

  void removeAtIndexFromTripSumSearchAll(int index) {
    _TripSumSearchAll.removeAt(index);
    prefs.setStringList(
        'ff_TripSumSearchAll', _TripSumSearchAll.map((x) => x.path).toList());
  }

  void updateTripSumSearchAllAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _TripSumSearchAll[index] = updateFn(_TripSumSearchAll[index]);
    prefs.setStringList(
        'ff_TripSumSearchAll', _TripSumSearchAll.map((x) => x.path).toList());
  }

  void insertAtIndexInTripSumSearchAll(int index, DocumentReference value) {
    _TripSumSearchAll.insert(index, value);
    prefs.setStringList(
        'ff_TripSumSearchAll', _TripSumSearchAll.map((x) => x.path).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
