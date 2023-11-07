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

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _massas = snapshotData['Massas'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
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
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Massas': massas,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreferenciasRecordDocumentEquality
    implements Equality<PreferenciasRecord> {
  const PreferenciasRecordDocumentEquality();

  @override
  bool equals(PreferenciasRecord? e1, PreferenciasRecord? e2) {
    return e1?.massas == e2?.massas && e1?.valor == e2?.valor;
  }

  @override
  int hash(PreferenciasRecord? e) =>
      const ListEquality().hash([e?.massas, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is PreferenciasRecord;
}
