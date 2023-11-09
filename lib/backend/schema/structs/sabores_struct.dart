// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaboresStruct extends FFFirebaseStruct {
  SaboresStruct({
    String? sabor1,
    String? sabor2,
    double? precoSabor1,
    double? precoSabor2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sabor1 = sabor1,
        _sabor2 = sabor2,
        _precoSabor1 = precoSabor1,
        _precoSabor2 = precoSabor2,
        super(firestoreUtilData);

  // "sabor1" field.
  String? _sabor1;
  String get sabor1 => _sabor1 ?? '';
  set sabor1(String? val) => _sabor1 = val;
  bool hasSabor1() => _sabor1 != null;

  // "sabor2" field.
  String? _sabor2;
  String get sabor2 => _sabor2 ?? '';
  set sabor2(String? val) => _sabor2 = val;
  bool hasSabor2() => _sabor2 != null;

  // "preco_sabor1" field.
  double? _precoSabor1;
  double get precoSabor1 => _precoSabor1 ?? 0.0;
  set precoSabor1(double? val) => _precoSabor1 = val;
  void incrementPrecoSabor1(double amount) =>
      _precoSabor1 = precoSabor1 + amount;
  bool hasPrecoSabor1() => _precoSabor1 != null;

  // "preco_sabor2" field.
  double? _precoSabor2;
  double get precoSabor2 => _precoSabor2 ?? 0.0;
  set precoSabor2(double? val) => _precoSabor2 = val;
  void incrementPrecoSabor2(double amount) =>
      _precoSabor2 = precoSabor2 + amount;
  bool hasPrecoSabor2() => _precoSabor2 != null;

  static SaboresStruct fromMap(Map<String, dynamic> data) => SaboresStruct(
        sabor1: data['sabor1'] as String?,
        sabor2: data['sabor2'] as String?,
        precoSabor1: castToType<double>(data['preco_sabor1']),
        precoSabor2: castToType<double>(data['preco_sabor2']),
      );

  static SaboresStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SaboresStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'sabor1': _sabor1,
        'sabor2': _sabor2,
        'preco_sabor1': _precoSabor1,
        'preco_sabor2': _precoSabor2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sabor1': serializeParam(
          _sabor1,
          ParamType.String,
        ),
        'sabor2': serializeParam(
          _sabor2,
          ParamType.String,
        ),
        'preco_sabor1': serializeParam(
          _precoSabor1,
          ParamType.double,
        ),
        'preco_sabor2': serializeParam(
          _precoSabor2,
          ParamType.double,
        ),
      }.withoutNulls;

  static SaboresStruct fromSerializableMap(Map<String, dynamic> data) =>
      SaboresStruct(
        sabor1: deserializeParam(
          data['sabor1'],
          ParamType.String,
          false,
        ),
        sabor2: deserializeParam(
          data['sabor2'],
          ParamType.String,
          false,
        ),
        precoSabor1: deserializeParam(
          data['preco_sabor1'],
          ParamType.double,
          false,
        ),
        precoSabor2: deserializeParam(
          data['preco_sabor2'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SaboresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SaboresStruct &&
        sabor1 == other.sabor1 &&
        sabor2 == other.sabor2 &&
        precoSabor1 == other.precoSabor1 &&
        precoSabor2 == other.precoSabor2;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sabor1, sabor2, precoSabor1, precoSabor2]);
}

SaboresStruct createSaboresStruct({
  String? sabor1,
  String? sabor2,
  double? precoSabor1,
  double? precoSabor2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SaboresStruct(
      sabor1: sabor1,
      sabor2: sabor2,
      precoSabor1: precoSabor1,
      precoSabor2: precoSabor2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SaboresStruct? updateSaboresStruct(
  SaboresStruct? sabores, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sabores
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSaboresStructData(
  Map<String, dynamic> firestoreData,
  SaboresStruct? sabores,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sabores == null) {
    return;
  }
  if (sabores.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sabores.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final saboresData = getSaboresFirestoreData(sabores, forFieldValue);
  final nestedData = saboresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sabores.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSaboresFirestoreData(
  SaboresStruct? sabores, [
  bool forFieldValue = false,
]) {
  if (sabores == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sabores.toMap());

  // Add any Firestore field values
  sabores.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSaboresListFirestoreData(
  List<SaboresStruct>? saboress,
) =>
    saboress?.map((e) => getSaboresFirestoreData(e, true)).toList() ?? [];
