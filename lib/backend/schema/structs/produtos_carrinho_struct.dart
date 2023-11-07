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
    double? valor,
    double? quantidade,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeProduto = nomeProduto,
        _img = img,
        _valor = valor,
        _quantidade = quantidade,
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

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  static ProdutosCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      ProdutosCarrinhoStruct(
        nomeProduto: data['NomeProduto'] as String?,
        img: data['img'] as String?,
        valor: castToType<double>(data['valor']),
        quantidade: castToType<double>(data['quantidade']),
      );

  static ProdutosCarrinhoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ProdutosCarrinhoStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'NomeProduto': _nomeProduto,
        'img': _img,
        'valor': _valor,
        'quantidade': _quantidade,
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
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
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
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
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
        valor == other.valor &&
        quantidade == other.quantidade;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomeProduto, img, valor, quantidade]);
}

ProdutosCarrinhoStruct createProdutosCarrinhoStruct({
  String? nomeProduto,
  String? img,
  double? valor,
  double? quantidade,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosCarrinhoStruct(
      nomeProduto: nomeProduto,
      img: img,
      valor: valor,
      quantidade: quantidade,
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
