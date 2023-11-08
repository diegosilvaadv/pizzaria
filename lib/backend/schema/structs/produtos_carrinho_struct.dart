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
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeProduto = nomeProduto,
        _img = img,
        _quantity = quantity,
        _valor = valor,
        _valorpreferecias = valorpreferecias,
        _massaNome = massaNome,
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

  static ProdutosCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      ProdutosCarrinhoStruct(
        nomeProduto: data['NomeProduto'] as String?,
        img: data['img'] as String?,
        quantity: castToType<int>(data['quantity']),
        valor: castToType<double>(data['valor']),
        valorpreferecias: castToType<double>(data['valorpreferecias']),
        massaNome: data['massa_nome'] as String?,
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
        massaNome == other.massaNome;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nomeProduto, img, quantity, valor, valorpreferecias, massaNome]);
}

ProdutosCarrinhoStruct createProdutosCarrinhoStruct({
  String? nomeProduto,
  String? img,
  int? quantity,
  double? valor,
  double? valorpreferecias,
  String? massaNome,
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
