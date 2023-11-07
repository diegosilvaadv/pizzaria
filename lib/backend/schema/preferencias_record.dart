import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PreferenciasRecord extends FirestoreRecord {
  PreferenciasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Massas" field.
  String? _massas;
  String get massas => _massas ?? '';
  bool hasMassas() => _massas != null;

  // "valormassa" field.
  double? _valormassa;
  double get valormassa => _valormassa ?? 0.0;
  bool hasValormassa() => _valormassa != null;

  // "selecionar" field.
  bool? _selecionar;
  bool get selecionar => _selecionar ?? false;
  bool hasSelecionar() => _selecionar != null;

  void _initializeFields() {
    _massas = snapshotData['Massas'] as String?;
    _valormassa = castToType<double>(snapshotData['valormassa']);
    _selecionar = snapshotData['selecionar'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('preferencias');

  static Stream<PreferenciasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreferenciasRecord.fromSnapshot(s));

  static Future<PreferenciasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreferenciasRecord.fromSnapshot(s));

  static PreferenciasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreferenciasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreferenciasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreferenciasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreferenciasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreferenciasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreferenciasRecordData({
  String? massas,
  double? valormassa,
  bool? selecionar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Massas': massas,
      'valormassa': valormassa,
      'selecionar': selecionar,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreferenciasRecordDocumentEquality
    implements Equality<PreferenciasRecord> {
  const PreferenciasRecordDocumentEquality();

  @override
  bool equals(PreferenciasRecord? e1, PreferenciasRecord? e2) {
    return e1?.massas == e2?.massas &&
        e1?.valormassa == e2?.valormassa &&
        e1?.selecionar == e2?.selecionar;
  }

  @override
  int hash(PreferenciasRecord? e) =>
      const ListEquality().hash([e?.massas, e?.valormassa, e?.selecionar]);

  @override
  bool isValidKey(Object? o) => o is PreferenciasRecord;
}
