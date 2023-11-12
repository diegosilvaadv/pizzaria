import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ListaCarrinhoPedidosRecord extends FirestoreRecord {
  ListaCarrinhoPedidosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome_produto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  bool hasNomeProduto() => _nomeProduto != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "nPedido" field.
  double? _nPedido;
  double get nPedido => _nPedido ?? 0.0;
  bool hasNPedido() => _nPedido != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "quanty" field.
  int? _quanty;
  int get quanty => _quanty ?? 0;
  bool hasQuanty() => _quanty != null;

  void _initializeFields() {
    _nomeProduto = snapshotData['nome_produto'] as String?;
    _img = snapshotData['img'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _nPedido = castToType<double>(snapshotData['nPedido']);
    _valor = castToType<double>(snapshotData['valor']);
    _quanty = castToType<int>(snapshotData['quanty']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listaCarrinhoPedidos');

  static Stream<ListaCarrinhoPedidosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ListaCarrinhoPedidosRecord.fromSnapshot(s));

  static Future<ListaCarrinhoPedidosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ListaCarrinhoPedidosRecord.fromSnapshot(s));

  static ListaCarrinhoPedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaCarrinhoPedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaCarrinhoPedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaCarrinhoPedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaCarrinhoPedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaCarrinhoPedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaCarrinhoPedidosRecordData({
  String? nomeProduto,
  String? img,
  DateTime? data,
  String? status,
  DocumentReference? userRef,
  double? nPedido,
  double? valor,
  int? quanty,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_produto': nomeProduto,
      'img': img,
      'data': data,
      'status': status,
      'userRef': userRef,
      'nPedido': nPedido,
      'valor': valor,
      'quanty': quanty,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListaCarrinhoPedidosRecordDocumentEquality
    implements Equality<ListaCarrinhoPedidosRecord> {
  const ListaCarrinhoPedidosRecordDocumentEquality();

  @override
  bool equals(ListaCarrinhoPedidosRecord? e1, ListaCarrinhoPedidosRecord? e2) {
    return e1?.nomeProduto == e2?.nomeProduto &&
        e1?.img == e2?.img &&
        e1?.data == e2?.data &&
        e1?.status == e2?.status &&
        e1?.userRef == e2?.userRef &&
        e1?.nPedido == e2?.nPedido &&
        e1?.valor == e2?.valor &&
        e1?.quanty == e2?.quanty;
  }

  @override
  int hash(ListaCarrinhoPedidosRecord? e) => const ListEquality().hash([
        e?.nomeProduto,
        e?.img,
        e?.data,
        e?.status,
        e?.userRef,
        e?.nPedido,
        e?.valor,
        e?.quanty
      ]);

  @override
  bool isValidKey(Object? o) => o is ListaCarrinhoPedidosRecord;
}
