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

  // "valor_pizza_inteira" field.
  double? _valorPizzaInteira;
  double get valorPizzaInteira => _valorPizzaInteira ?? 0.0;
  bool hasValorPizzaInteira() => _valorPizzaInteira != null;

  // "quanty_pizza_inteira" field.
  int? _quantyPizzaInteira;
  int get quantyPizzaInteira => _quantyPizzaInteira ?? 0;
  bool hasQuantyPizzaInteira() => _quantyPizzaInteira != null;

  // "nome_massa_pizza_inteira" field.
  String? _nomeMassaPizzaInteira;
  String get nomeMassaPizzaInteira => _nomeMassaPizzaInteira ?? '';
  bool hasNomeMassaPizzaInteira() => _nomeMassaPizzaInteira != null;

  // "valor_massa_pizza_inteira" field.
  double? _valorMassaPizzaInteira;
  double get valorMassaPizzaInteira => _valorMassaPizzaInteira ?? 0.0;
  bool hasValorMassaPizzaInteira() => _valorMassaPizzaInteira != null;

  // "nome_sabor1" field.
  String? _nomeSabor1;
  String get nomeSabor1 => _nomeSabor1 ?? '';
  bool hasNomeSabor1() => _nomeSabor1 != null;

  // "valor_sabor1" field.
  double? _valorSabor1;
  double get valorSabor1 => _valorSabor1 ?? 0.0;
  bool hasValorSabor1() => _valorSabor1 != null;

  // "nome_sabor2" field.
  String? _nomeSabor2;
  String get nomeSabor2 => _nomeSabor2 ?? '';
  bool hasNomeSabor2() => _nomeSabor2 != null;

  // "valor_sabor2" field.
  double? _valorSabor2;
  double get valorSabor2 => _valorSabor2 ?? 0.0;
  bool hasValorSabor2() => _valorSabor2 != null;

  // "quanty_pizza_2sabores" field.
  int? _quantyPizza2sabores;
  int get quantyPizza2sabores => _quantyPizza2sabores ?? 0;
  bool hasQuantyPizza2sabores() => _quantyPizza2sabores != null;

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

  void _initializeFields() {
    _nomeProduto = snapshotData['nome_produto'] as String?;
    _img = snapshotData['img'] as String?;
    _valorPizzaInteira =
        castToType<double>(snapshotData['valor_pizza_inteira']);
    _quantyPizzaInteira = castToType<int>(snapshotData['quanty_pizza_inteira']);
    _nomeMassaPizzaInteira =
        snapshotData['nome_massa_pizza_inteira'] as String?;
    _valorMassaPizzaInteira =
        castToType<double>(snapshotData['valor_massa_pizza_inteira']);
    _nomeSabor1 = snapshotData['nome_sabor1'] as String?;
    _valorSabor1 = castToType<double>(snapshotData['valor_sabor1']);
    _nomeSabor2 = snapshotData['nome_sabor2'] as String?;
    _valorSabor2 = castToType<double>(snapshotData['valor_sabor2']);
    _quantyPizza2sabores =
        castToType<int>(snapshotData['quanty_pizza_2sabores']);
    _data = snapshotData['data'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
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
  double? valorPizzaInteira,
  int? quantyPizzaInteira,
  String? nomeMassaPizzaInteira,
  double? valorMassaPizzaInteira,
  String? nomeSabor1,
  double? valorSabor1,
  String? nomeSabor2,
  double? valorSabor2,
  int? quantyPizza2sabores,
  DateTime? data,
  String? status,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_produto': nomeProduto,
      'img': img,
      'valor_pizza_inteira': valorPizzaInteira,
      'quanty_pizza_inteira': quantyPizzaInteira,
      'nome_massa_pizza_inteira': nomeMassaPizzaInteira,
      'valor_massa_pizza_inteira': valorMassaPizzaInteira,
      'nome_sabor1': nomeSabor1,
      'valor_sabor1': valorSabor1,
      'nome_sabor2': nomeSabor2,
      'valor_sabor2': valorSabor2,
      'quanty_pizza_2sabores': quantyPizza2sabores,
      'data': data,
      'status': status,
      'userRef': userRef,
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
        e1?.valorPizzaInteira == e2?.valorPizzaInteira &&
        e1?.quantyPizzaInteira == e2?.quantyPizzaInteira &&
        e1?.nomeMassaPizzaInteira == e2?.nomeMassaPizzaInteira &&
        e1?.valorMassaPizzaInteira == e2?.valorMassaPizzaInteira &&
        e1?.nomeSabor1 == e2?.nomeSabor1 &&
        e1?.valorSabor1 == e2?.valorSabor1 &&
        e1?.nomeSabor2 == e2?.nomeSabor2 &&
        e1?.valorSabor2 == e2?.valorSabor2 &&
        e1?.quantyPizza2sabores == e2?.quantyPizza2sabores &&
        e1?.data == e2?.data &&
        e1?.status == e2?.status &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(ListaCarrinhoPedidosRecord? e) => const ListEquality().hash([
        e?.nomeProduto,
        e?.img,
        e?.valorPizzaInteira,
        e?.quantyPizzaInteira,
        e?.nomeMassaPizzaInteira,
        e?.valorMassaPizzaInteira,
        e?.nomeSabor1,
        e?.valorSabor1,
        e?.nomeSabor2,
        e?.valorSabor2,
        e?.quantyPizza2sabores,
        e?.data,
        e?.status,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ListaCarrinhoPedidosRecord;
}
