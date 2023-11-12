import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NumberPedidosRecord extends FirestoreRecord {
  NumberPedidosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NProduto" field.
  String? _nProduto;
  String get nProduto => _nProduto ?? '';
  bool hasNProduto() => _nProduto != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "quanty" field.
  double? _quanty;
  double get quanty => _quanty ?? 0.0;
  bool hasQuanty() => _quanty != null;

  // "referenc" field.
  DocumentReference? _referenc;
  DocumentReference? get referenc => _referenc;
  bool hasReferenc() => _referenc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nProduto = snapshotData['NProduto'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _quanty = castToType<double>(snapshotData['quanty']);
    _referenc = snapshotData['referenc'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('NumberPedidos')
          : FirebaseFirestore.instance.collectionGroup('NumberPedidos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('NumberPedidos').doc();

  static Stream<NumberPedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NumberPedidosRecord.fromSnapshot(s));

  static Future<NumberPedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NumberPedidosRecord.fromSnapshot(s));

  static NumberPedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NumberPedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NumberPedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NumberPedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NumberPedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NumberPedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNumberPedidosRecordData({
  String? nProduto,
  double? valor,
  double? quanty,
  DocumentReference? referenc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NProduto': nProduto,
      'valor': valor,
      'quanty': quanty,
      'referenc': referenc,
    }.withoutNulls,
  );

  return firestoreData;
}

class NumberPedidosRecordDocumentEquality
    implements Equality<NumberPedidosRecord> {
  const NumberPedidosRecordDocumentEquality();

  @override
  bool equals(NumberPedidosRecord? e1, NumberPedidosRecord? e2) {
    return e1?.nProduto == e2?.nProduto &&
        e1?.valor == e2?.valor &&
        e1?.quanty == e2?.quanty &&
        e1?.referenc == e2?.referenc;
  }

  @override
  int hash(NumberPedidosRecord? e) => const ListEquality()
      .hash([e?.nProduto, e?.valor, e?.quanty, e?.referenc]);

  @override
  bool isValidKey(Object? o) => o is NumberPedidosRecord;
}
