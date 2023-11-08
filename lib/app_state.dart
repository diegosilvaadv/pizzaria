import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
      _ProdutosDoCarrinho = prefs
              .getStringList('ff_ProdutosDoCarrinho')
              ?.map((x) {
                try {
                  return ProdutosCarrinhoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ProdutosDoCarrinho;
    });
    _safeInit(() {
      _totalprice = prefs.getDouble('ff_totalprice') ?? _totalprice;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ProdutosCarrinhoStruct> _ProdutosDoCarrinho = [];
  List<ProdutosCarrinhoStruct> get ProdutosDoCarrinho => _ProdutosDoCarrinho;
  set ProdutosDoCarrinho(List<ProdutosCarrinhoStruct> value) {
    _ProdutosDoCarrinho = value;
    prefs.setStringList(
        'ff_ProdutosDoCarrinho', value.map((x) => x.serialize()).toList());
  }

  void addToProdutosDoCarrinho(ProdutosCarrinhoStruct value) {
    _ProdutosDoCarrinho.add(value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void removeFromProdutosDoCarrinho(ProdutosCarrinhoStruct value) {
    _ProdutosDoCarrinho.remove(value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutosDoCarrinho(int index) {
    _ProdutosDoCarrinho.removeAt(index);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void updateProdutosDoCarrinhoAtIndex(
    int index,
    ProdutosCarrinhoStruct Function(ProdutosCarrinhoStruct) updateFn,
  ) {
    _ProdutosDoCarrinho[index] = updateFn(_ProdutosDoCarrinho[index]);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutosDoCarrinho(
      int index, ProdutosCarrinhoStruct value) {
    _ProdutosDoCarrinho.insert(index, value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  double _totalprice = 0;
  double get totalprice => _totalprice;
  set totalprice(double value) {
    _totalprice = value;
    prefs.setDouble('ff_totalprice', value);
  }

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }

  double _total = 0;
  double get total => _total;
  set total(double value) {
    _total = value;
  }

  List<PreferenciasStruct> _preferec = [];
  List<PreferenciasStruct> get preferec => _preferec;
  set preferec(List<PreferenciasStruct> value) {
    _preferec = value;
  }

  void addToPreferec(PreferenciasStruct value) {
    _preferec.add(value);
  }

  void removeFromPreferec(PreferenciasStruct value) {
    _preferec.remove(value);
  }

  void removeAtIndexFromPreferec(int index) {
    _preferec.removeAt(index);
  }

  void updatePreferecAtIndex(
    int index,
    PreferenciasStruct Function(PreferenciasStruct) updateFn,
  ) {
    _preferec[index] = updateFn(_preferec[index]);
  }

  void insertAtIndexInPreferec(int index, PreferenciasStruct value) {
    _preferec.insert(index, value);
  }

  List<bool> _prefere = [];
  List<bool> get prefere => _prefere;
  set prefere(List<bool> value) {
    _prefere = value;
  }

  void addToPrefere(bool value) {
    _prefere.add(value);
  }

  void removeFromPrefere(bool value) {
    _prefere.remove(value);
  }

  void removeAtIndexFromPrefere(int index) {
    _prefere.removeAt(index);
  }

  void updatePrefereAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    _prefere[index] = updateFn(_prefere[index]);
  }

  void insertAtIndexInPrefere(int index, bool value) {
    _prefere.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
