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

  // "transition" field.
  int? _transition;
  int get transition => _transition ?? 0;
  bool hasTransition() => _transition != null;

  void _initializeFields() {
    _massas = snapshotData['Massas'] as String?;
    _valormassa = castToType<double>(snapshotData['valormassa']);
    _transition = castToType<int>(snapshotData['transition']);
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
  int? transition,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Massas': massas,
      'valormassa': valormassa,
      'transition': transition,
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
        e1?.transition == e2?.transition;
  }

  @override
  int hash(PreferenciasRecord? e) =>
      const ListEquality().hash([e?.massas, e?.valormassa, e?.transition]);

  @override
  bool isValidKey(Object? o) => o is PreferenciasRecord;
}
