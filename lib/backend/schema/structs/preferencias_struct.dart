// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreferenciasStruct extends FFFirebaseStruct {
  PreferenciasStruct({
    bool? select,
    String? massa,
    double? valor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _select = select,
        _massa = massa,
        _valor = valor,
        super(firestoreUtilData);

  // "select" field.
  bool? _select;
  bool get select => _select ?? false;
  set select(bool? val) => _select = val;
  bool hasSelect() => _select != null;

  // "massa" field.
  String? _massa;
  String get massa => _massa ?? '';
  set massa(String? val) => _massa = val;
  bool hasMassa() => _massa != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  static PreferenciasStruct fromMap(Map<String, dynamic> data) =>
      PreferenciasStruct(
        select: data['select'] as bool?,
        massa: data['massa'] as String?,
        valor: castToType<double>(data['valor']),
      );

  static PreferenciasStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PreferenciasStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'select': _select,
        'massa': _massa,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'select': serializeParam(
          _select,
          ParamType.bool,
        ),
        'massa': serializeParam(
          _massa,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
      }.withoutNulls;

  static PreferenciasStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreferenciasStruct(
        select: deserializeParam(
          data['select'],
          ParamType.bool,
          false,
        ),
        massa: deserializeParam(
          data['massa'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PreferenciasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PreferenciasStruct &&
        select == other.select &&
        massa == other.massa &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([select, massa, valor]);
}

PreferenciasStruct createPreferenciasStruct({
  bool? select,
  String? massa,
  double? valor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PreferenciasStruct(
      select: select,
      massa: massa,
      valor: valor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PreferenciasStruct? updatePreferenciasStruct(
  PreferenciasStruct? preferencias, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    preferencias
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPreferenciasStructData(
  Map<String, dynamic> firestoreData,
  PreferenciasStruct? preferencias,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (preferencias == null) {
    return;
  }
  if (preferencias.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && preferencias.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final preferenciasData =
      getPreferenciasFirestoreData(preferencias, forFieldValue);
  final nestedData =
      preferenciasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = preferencias.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPreferenciasFirestoreData(
  PreferenciasStruct? preferencias, [
  bool forFieldValue = false,
]) {
  if (preferencias == null) {
    return {};
  }
  final firestoreData = mapToFirestore(preferencias.toMap());

  // Add any Firestore field values
  preferencias.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPreferenciasListFirestoreData(
  List<PreferenciasStruct>? preferenciass,
) =>
    preferenciass?.map((e) => getPreferenciasFirestoreData(e, true)).toList() ??
    [];
