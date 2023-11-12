// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosCarrinhoStruct extends FFFirebaseStruct {
  ProdutosCarrinhoStruct({
    String? nomeProduto,
    String? img,
    int? quantity,
    double? valor,
    double? valorpreferecias,
    String? massaNome,
    double? valorSabor1,
    double? valorSabor2,
    double? valorSabor3,
    double? valorSabor4,
    double? valorBebidas,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeProduto = nomeProduto,
        _img = img,
        _quantity = quantity,
        _valor = valor,
        _valorpreferecias = valorpreferecias,
        _massaNome = massaNome,
        _valorSabor1 = valorSabor1,
        _valorSabor2 = valorSabor2,
        _valorSabor3 = valorSabor3,
        _valorSabor4 = valorSabor4,
        _valorBebidas = valorBebidas,
        super(firestoreUtilData);

  // "NomeProduto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  set nomeProduto(String? val) => _nomeProduto = val;
  bool hasNomeProduto() => _nomeProduto != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "valorpreferecias" field.
  double? _valorpreferecias;
  double get valorpreferecias => _valorpreferecias ?? 0.0;
  set valorpreferecias(double? val) => _valorpreferecias = val;
  void incrementValorpreferecias(double amount) =>
      _valorpreferecias = valorpreferecias + amount;
  bool hasValorpreferecias() => _valorpreferecias != null;

  // "massa_nome" field.
  String? _massaNome;
  String get massaNome => _massaNome ?? '';
  set massaNome(String? val) => _massaNome = val;
  bool hasMassaNome() => _massaNome != null;

  // "valor_sabor1" field.
  double? _valorSabor1;
  double get valorSabor1 => _valorSabor1 ?? 0.0;
  set valorSabor1(double? val) => _valorSabor1 = val;
  void incrementValorSabor1(double amount) =>
      _valorSabor1 = valorSabor1 + amount;
  bool hasValorSabor1() => _valorSabor1 != null;

  // "valor_sabor2" field.
  double? _valorSabor2;
  double get valorSabor2 => _valorSabor2 ?? 0.0;
  set valorSabor2(double? val) => _valorSabor2 = val;
  void incrementValorSabor2(double amount) =>
      _valorSabor2 = valorSabor2 + amount;
  bool hasValorSabor2() => _valorSabor2 != null;

  // "valor_sabor3" field.
  double? _valorSabor3;
  double get valorSabor3 => _valorSabor3 ?? 0.0;
  set valorSabor3(double? val) => _valorSabor3 = val;
  void incrementValorSabor3(double amount) =>
      _valorSabor3 = valorSabor3 + amount;
  bool hasValorSabor3() => _valorSabor3 != null;

  // "valor_sabor4" field.
  double? _valorSabor4;
  double get valorSabor4 => _valorSabor4 ?? 0.0;
  set valorSabor4(double? val) => _valorSabor4 = val;
  void incrementValorSabor4(double amount) =>
      _valorSabor4 = valorSabor4 + amount;
  bool hasValorSabor4() => _valorSabor4 != null;

  // "valorBebidas" field.
  double? _valorBebidas;
  double get valorBebidas => _valorBebidas ?? 0.0;
  set valorBebidas(double? val) => _valorBebidas = val;
  void incrementValorBebidas(double amount) =>
      _valorBebidas = valorBebidas + amount;
  bool hasValorBebidas() => _valorBebidas != null;

  static ProdutosCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      ProdutosCarrinhoStruct(
        nomeProduto: data['NomeProduto'] as String?,
        img: data['img'] as String?,
        quantity: castToType<int>(data['quantity']),
        valor: castToType<double>(data['valor']),
        valorpreferecias: castToType<double>(data['valorpreferecias']),
        massaNome: data['massa_nome'] as String?,
        valorSabor1: castToType<double>(data['valor_sabor1']),
        valorSabor2: castToType<double>(data['valor_sabor2']),
        valorSabor3: castToType<double>(data['valor_sabor3']),
        valorSabor4: castToType<double>(data['valor_sabor4']),
        valorBebidas: castToType<double>(data['valorBebidas']),
      );

  static ProdutosCarrinhoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ProdutosCarrinhoStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'NomeProduto': _nomeProduto,
        'img': _img,
        'quantity': _quantity,
        'valor': _valor,
        'valorpreferecias': _valorpreferecias,
        'massa_nome': _massaNome,
        'valor_sabor1': _valorSabor1,
        'valor_sabor2': _valorSabor2,
        'valor_sabor3': _valorSabor3,
        'valor_sabor4': _valorSabor4,
        'valorBebidas': _valorBebidas,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'NomeProduto': serializeParam(
          _nomeProduto,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'valorpreferecias': serializeParam(
          _valorpreferecias,
          ParamType.double,
        ),
        'massa_nome': serializeParam(
          _massaNome,
          ParamType.String,
        ),
        'valor_sabor1': serializeParam(
          _valorSabor1,
          ParamType.double,
        ),
        'valor_sabor2': serializeParam(
          _valorSabor2,
          ParamType.double,
        ),
        'valor_sabor3': serializeParam(
          _valorSabor3,
          ParamType.double,
        ),
        'valor_sabor4': serializeParam(
          _valorSabor4,
          ParamType.double,
        ),
        'valorBebidas': serializeParam(
          _valorBebidas,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProdutosCarrinhoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProdutosCarrinhoStruct(
        nomeProduto: deserializeParam(
          data['NomeProduto'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        valorpreferecias: deserializeParam(
          data['valorpreferecias'],
          ParamType.double,
          false,
        ),
        massaNome: deserializeParam(
          data['massa_nome'],
          ParamType.String,
          false,
        ),
        valorSabor1: deserializeParam(
          data['valor_sabor1'],
          ParamType.double,
          false,
        ),
        valorSabor2: deserializeParam(
          data['valor_sabor2'],
          ParamType.double,
          false,
        ),
        valorSabor3: deserializeParam(
          data['valor_sabor3'],
          ParamType.double,
          false,
        ),
        valorSabor4: deserializeParam(
          data['valor_sabor4'],
          ParamType.double,
          false,
        ),
        valorBebidas: deserializeParam(
          data['valorBebidas'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosCarrinhoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosCarrinhoStruct &&
        nomeProduto == other.nomeProduto &&
        img == other.img &&
        quantity == other.quantity &&
        valor == other.valor &&
        valorpreferecias == other.valorpreferecias &&
        massaNome == other.massaNome &&
        valorSabor1 == other.valorSabor1 &&
        valorSabor2 == other.valorSabor2 &&
        valorSabor3 == other.valorSabor3 &&
        valorSabor4 == other.valorSabor4 &&
        valorBebidas == other.valorBebidas;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomeProduto,
        img,
        quantity,
        valor,
        valorpreferecias,
        massaNome,
        valorSabor1,
        valorSabor2,
        valorSabor3,
        valorSabor4,
        valorBebidas
      ]);
}

ProdutosCarrinhoStruct createProdutosCarrinhoStruct({
  String? nomeProduto,
  String? img,
  int? quantity,
  double? valor,
  double? valorpreferecias,
  String? massaNome,
  double? valorSabor1,
  double? valorSabor2,
  double? valorSabor3,
  double? valorSabor4,
  double? valorBebidas,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosCarrinhoStruct(
      nomeProduto: nomeProduto,
      img: img,
      quantity: quantity,
      valor: valor,
      valorpreferecias: valorpreferecias,
      massaNome: massaNome,
      valorSabor1: valorSabor1,
      valorSabor2: valorSabor2,
      valorSabor3: valorSabor3,
      valorSabor4: valorSabor4,
      valorBebidas: valorBebidas,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosCarrinhoStruct? updateProdutosCarrinhoStruct(
  ProdutosCarrinhoStruct? produtosCarrinho, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtosCarrinho
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosCarrinhoStructData(
  Map<String, dynamic> firestoreData,
  ProdutosCarrinhoStruct? produtosCarrinho,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtosCarrinho == null) {
    return;
  }
  if (produtosCarrinho.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtosCarrinho.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosCarrinhoData =
      getProdutosCarrinhoFirestoreData(produtosCarrinho, forFieldValue);
  final nestedData =
      produtosCarrinhoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtosCarrinho.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosCarrinhoFirestoreData(
  ProdutosCarrinhoStruct? produtosCarrinho, [
  bool forFieldValue = false,
]) {
  if (produtosCarrinho == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtosCarrinho.toMap());

  // Add any Firestore field values
  produtosCarrinho.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosCarrinhoListFirestoreData(
  List<ProdutosCarrinhoStruct>? produtosCarrinhos,
) =>
    produtosCarrinhos
        ?.map((e) => getProdutosCarrinhoFirestoreData(e, true))
        .toList() ??
    [];
