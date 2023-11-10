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
    String? sabor1GG,
    String? sabor2GG,
    String? sabor3GG,
    String? sabor4GG,
    double? precoSab1GG,
    double? precoSab2GG,
    double? precoSab3GG,
    double? precoSab4GG,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sabor1 = sabor1,
        _sabor2 = sabor2,
        _precoSabor1 = precoSabor1,
        _precoSabor2 = precoSabor2,
        _sabor1GG = sabor1GG,
        _sabor2GG = sabor2GG,
        _sabor3GG = sabor3GG,
        _sabor4GG = sabor4GG,
        _precoSab1GG = precoSab1GG,
        _precoSab2GG = precoSab2GG,
        _precoSab3GG = precoSab3GG,
        _precoSab4GG = precoSab4GG,
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

  // "sabor1GG" field.
  String? _sabor1GG;
  String get sabor1GG => _sabor1GG ?? '';
  set sabor1GG(String? val) => _sabor1GG = val;
  bool hasSabor1GG() => _sabor1GG != null;

  // "sabor2GG" field.
  String? _sabor2GG;
  String get sabor2GG => _sabor2GG ?? '';
  set sabor2GG(String? val) => _sabor2GG = val;
  bool hasSabor2GG() => _sabor2GG != null;

  // "sabor3GG" field.
  String? _sabor3GG;
  String get sabor3GG => _sabor3GG ?? '';
  set sabor3GG(String? val) => _sabor3GG = val;
  bool hasSabor3GG() => _sabor3GG != null;

  // "sabor4GG" field.
  String? _sabor4GG;
  String get sabor4GG => _sabor4GG ?? '';
  set sabor4GG(String? val) => _sabor4GG = val;
  bool hasSabor4GG() => _sabor4GG != null;

  // "PrecoSab1GG" field.
  double? _precoSab1GG;
  double get precoSab1GG => _precoSab1GG ?? 0.0;
  set precoSab1GG(double? val) => _precoSab1GG = val;
  void incrementPrecoSab1GG(double amount) =>
      _precoSab1GG = precoSab1GG + amount;
  bool hasPrecoSab1GG() => _precoSab1GG != null;

  // "PrecoSab2GG" field.
  double? _precoSab2GG;
  double get precoSab2GG => _precoSab2GG ?? 0.0;
  set precoSab2GG(double? val) => _precoSab2GG = val;
  void incrementPrecoSab2GG(double amount) =>
      _precoSab2GG = precoSab2GG + amount;
  bool hasPrecoSab2GG() => _precoSab2GG != null;

  // "PrecoSab3GG" field.
  double? _precoSab3GG;
  double get precoSab3GG => _precoSab3GG ?? 0.0;
  set precoSab3GG(double? val) => _precoSab3GG = val;
  void incrementPrecoSab3GG(double amount) =>
      _precoSab3GG = precoSab3GG + amount;
  bool hasPrecoSab3GG() => _precoSab3GG != null;

  // "PrecoSab4GG" field.
  double? _precoSab4GG;
  double get precoSab4GG => _precoSab4GG ?? 0.0;
  set precoSab4GG(double? val) => _precoSab4GG = val;
  void incrementPrecoSab4GG(double amount) =>
      _precoSab4GG = precoSab4GG + amount;
  bool hasPrecoSab4GG() => _precoSab4GG != null;

  static SaboresStruct fromMap(Map<String, dynamic> data) => SaboresStruct(
        sabor1: data['sabor1'] as String?,
        sabor2: data['sabor2'] as String?,
        precoSabor1: castToType<double>(data['preco_sabor1']),
        precoSabor2: castToType<double>(data['preco_sabor2']),
        sabor1GG: data['sabor1GG'] as String?,
        sabor2GG: data['sabor2GG'] as String?,
        sabor3GG: data['sabor3GG'] as String?,
        sabor4GG: data['sabor4GG'] as String?,
        precoSab1GG: castToType<double>(data['PrecoSab1GG']),
        precoSab2GG: castToType<double>(data['PrecoSab2GG']),
        precoSab3GG: castToType<double>(data['PrecoSab3GG']),
        precoSab4GG: castToType<double>(data['PrecoSab4GG']),
      );

  static SaboresStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SaboresStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'sabor1': _sabor1,
        'sabor2': _sabor2,
        'preco_sabor1': _precoSabor1,
        'preco_sabor2': _precoSabor2,
        'sabor1GG': _sabor1GG,
        'sabor2GG': _sabor2GG,
        'sabor3GG': _sabor3GG,
        'sabor4GG': _sabor4GG,
        'PrecoSab1GG': _precoSab1GG,
        'PrecoSab2GG': _precoSab2GG,
        'PrecoSab3GG': _precoSab3GG,
        'PrecoSab4GG': _precoSab4GG,
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
        'sabor1GG': serializeParam(
          _sabor1GG,
          ParamType.String,
        ),
        'sabor2GG': serializeParam(
          _sabor2GG,
          ParamType.String,
        ),
        'sabor3GG': serializeParam(
          _sabor3GG,
          ParamType.String,
        ),
        'sabor4GG': serializeParam(
          _sabor4GG,
          ParamType.String,
        ),
        'PrecoSab1GG': serializeParam(
          _precoSab1GG,
          ParamType.double,
        ),
        'PrecoSab2GG': serializeParam(
          _precoSab2GG,
          ParamType.double,
        ),
        'PrecoSab3GG': serializeParam(
          _precoSab3GG,
          ParamType.double,
        ),
        'PrecoSab4GG': serializeParam(
          _precoSab4GG,
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
        sabor1GG: deserializeParam(
          data['sabor1GG'],
          ParamType.String,
          false,
        ),
        sabor2GG: deserializeParam(
          data['sabor2GG'],
          ParamType.String,
          false,
        ),
        sabor3GG: deserializeParam(
          data['sabor3GG'],
          ParamType.String,
          false,
        ),
        sabor4GG: deserializeParam(
          data['sabor4GG'],
          ParamType.String,
          false,
        ),
        precoSab1GG: deserializeParam(
          data['PrecoSab1GG'],
          ParamType.double,
          false,
        ),
        precoSab2GG: deserializeParam(
          data['PrecoSab2GG'],
          ParamType.double,
          false,
        ),
        precoSab3GG: deserializeParam(
          data['PrecoSab3GG'],
          ParamType.double,
          false,
        ),
        precoSab4GG: deserializeParam(
          data['PrecoSab4GG'],
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
        precoSabor2 == other.precoSabor2 &&
        sabor1GG == other.sabor1GG &&
        sabor2GG == other.sabor2GG &&
        sabor3GG == other.sabor3GG &&
        sabor4GG == other.sabor4GG &&
        precoSab1GG == other.precoSab1GG &&
        precoSab2GG == other.precoSab2GG &&
        precoSab3GG == other.precoSab3GG &&
        precoSab4GG == other.precoSab4GG;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sabor1,
        sabor2,
        precoSabor1,
        precoSabor2,
        sabor1GG,
        sabor2GG,
        sabor3GG,
        sabor4GG,
        precoSab1GG,
        precoSab2GG,
        precoSab3GG,
        precoSab4GG
      ]);
}

SaboresStruct createSaboresStruct({
  String? sabor1,
  String? sabor2,
  double? precoSabor1,
  double? precoSabor2,
  String? sabor1GG,
  String? sabor2GG,
  String? sabor3GG,
  String? sabor4GG,
  double? precoSab1GG,
  double? precoSab2GG,
  double? precoSab3GG,
  double? precoSab4GG,
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
      sabor1GG: sabor1GG,
      sabor2GG: sabor2GG,
      sabor3GG: sabor3GG,
      sabor4GG: sabor4GG,
      precoSab1GG: precoSab1GG,
      precoSab2GG: precoSab2GG,
      precoSab3GG: precoSab3GG,
      precoSab4GG: precoSab4GG,
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
