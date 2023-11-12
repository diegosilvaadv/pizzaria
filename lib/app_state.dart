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
    _safeInit(() {
      _numberCarrinho = prefs.getInt('ff_numberCarrinho') ?? _numberCarrinho;
    });
    _safeInit(() {
      _MenuCondicao = prefs.getString('ff_MenuCondicao') ?? _MenuCondicao;
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

  int _condicao = 0;
  int get condicao => _condicao;
  set condicao(int value) {
    _condicao = value;
  }

  double _preferec = 0;
  double get preferec => _preferec;
  set preferec(double value) {
    _preferec = value;
  }

  PrefenciasAppSStruct _PrefReferencia =
      PrefenciasAppSStruct.fromSerializableMap(
          jsonDecode('{"nome_massa":"Nenhuma","valor_massa":"0"}'));
  PrefenciasAppSStruct get PrefReferencia => _PrefReferencia;
  set PrefReferencia(PrefenciasAppSStruct value) {
    _PrefReferencia = value;
  }

  void updatePrefReferenciaStruct(Function(PrefenciasAppSStruct) updateFn) {
    updateFn(_PrefReferencia);
  }

  int _numberCarrinho = 0;
  int get numberCarrinho => _numberCarrinho;
  set numberCarrinho(int value) {
    _numberCarrinho = value;
    prefs.setInt('ff_numberCarrinho', value);
  }

  SaboresStruct _SaboresApp = SaboresStruct.fromSerializableMap(jsonDecode(
      '{"sabor1":"Nenhum","sabor2":"Nenhum","preco_sabor1":"0","preco_sabor2":"0"}'));
  SaboresStruct get SaboresApp => _SaboresApp;
  set SaboresApp(SaboresStruct value) {
    _SaboresApp = value;
  }

  void updateSaboresAppStruct(Function(SaboresStruct) updateFn) {
    updateFn(_SaboresApp);
  }

  double _precoSabor1 = 0;
  double get precoSabor1 => _precoSabor1;
  set precoSabor1(double value) {
    _precoSabor1 = value;
  }

  double _precoSabor2 = 0;
  double get precoSabor2 => _precoSabor2;
  set precoSabor2(double value) {
    _precoSabor2 = value;
  }

  int _massaCondicao = 0;
  int get massaCondicao => _massaCondicao;
  set massaCondicao(int value) {
    _massaCondicao = value;
  }

  String _MenuCondicao = 'Monte Sua Pizza';
  String get MenuCondicao => _MenuCondicao;
  set MenuCondicao(String value) {
    _MenuCondicao = value;
    prefs.setString('ff_MenuCondicao', value);
  }

  double _precoSabor3 = 0;
  double get precoSabor3 => _precoSabor3;
  set precoSabor3(double value) {
    _precoSabor3 = value;
  }

  double _precoSabor4 = 0;
  double get precoSabor4 => _precoSabor4;
  set precoSabor4(double value) {
    _precoSabor4 = value;
  }

  int _Drawer = 0;
  int get Drawer => _Drawer;
  set Drawer(int value) {
    _Drawer = value;
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
