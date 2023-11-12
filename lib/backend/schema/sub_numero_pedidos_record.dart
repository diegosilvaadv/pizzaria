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

  // "nPedido" field.
  double? _nPedido;
  double get nPedido => _nPedido ?? 0.0;
  bool hasNPedido() => _nPedido != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  void _initializeFields() {
    _referecia = snapshotData['referecia'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _nPedido = castToType<double>(snapshotData['nPedido']);
    _data = snapshotData['data'] as DateTime?;
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
  double? nPedido,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'referecia': referecia,
      'status': status,
      'nPedido': nPedido,
      'data': data,
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
        e1?.nPedido == e2?.nPedido &&
        e1?.data == e2?.data;
  }

  @override
  int hash(SubNumeroPedidosRecord? e) =>
      const ListEquality().hash([e?.referecia, e?.status, e?.nPedido, e?.data]);

  @override
  bool isValidKey(Object? o) => o is SubNumeroPedidosRecord;
}
