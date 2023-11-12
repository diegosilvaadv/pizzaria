import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SubNumeroPedidosRecord extends FirestoreRecord {
  SubNumeroPedidosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "referecia" field.
  DocumentReference? _referecia;
  DocumentReference? get referecia => _referecia;
  bool hasReferecia() => _referecia != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "NumberProdutos" field.
  int? _numberProdutos;
  int get numberProdutos => _numberProdutos ?? 0;
  bool hasNumberProdutos() => _numberProdutos != null;

  void _initializeFields() {
    _referecia = snapshotData['referecia'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _numberProdutos = castToType<int>(snapshotData['NumberProdutos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SubNumeroPedidos');

  static Stream<SubNumeroPedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubNumeroPedidosRecord.fromSnapshot(s));

  static Future<SubNumeroPedidosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubNumeroPedidosRecord.fromSnapshot(s));

  static SubNumeroPedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubNumeroPedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubNumeroPedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubNumeroPedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubNumeroPedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubNumeroPedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubNumeroPedidosRecordData({
  DocumentReference? referecia,
  String? status,
  DateTime? data,
  int? numberProdutos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'referecia': referecia,
      'status': status,
      'data': data,
      'NumberProdutos': numberProdutos,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubNumeroPedidosRecordDocumentEquality
    implements Equality<SubNumeroPedidosRecord> {
  const SubNumeroPedidosRecordDocumentEquality();

  @override
  bool equals(SubNumeroPedidosRecord? e1, SubNumeroPedidosRecord? e2) {
    return e1?.referecia == e2?.referecia &&
        e1?.status == e2?.status &&
        e1?.data == e2?.data &&
        e1?.numberProdutos == e2?.numberProdutos;
  }

  @override
  int hash(SubNumeroPedidosRecord? e) => const ListEquality()
      .hash([e?.referecia, e?.status, e?.data, e?.numberProdutos]);

  @override
  bool isValidKey(Object? o) => o is SubNumeroPedidosRecord;
}
