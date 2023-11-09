import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome_produto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  bool hasNomeProduto() => _nomeProduto != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "valor_pizza" field.
  double? _valorPizza;
  double get valorPizza => _valorPizza ?? 0.0;
  bool hasValorPizza() => _valorPizza != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  bool hasTags() => _tags != null;

  void _initializeFields() {
    _nomeProduto = snapshotData['nome_produto'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _img = snapshotData['img'] as String?;
    _valorPizza = castToType<double>(snapshotData['valor_pizza']);
    _tags = snapshotData['tags'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? nomeProduto,
  String? descricao,
  String? img,
  double? valorPizza,
  String? tags,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_produto': nomeProduto,
      'descricao': descricao,
      'img': img,
      'valor_pizza': valorPizza,
      'tags': tags,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.nomeProduto == e2?.nomeProduto &&
        e1?.descricao == e2?.descricao &&
        e1?.img == e2?.img &&
        e1?.valorPizza == e2?.valorPizza &&
        e1?.tags == e2?.tags;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality()
      .hash([e?.nomeProduto, e?.descricao, e?.img, e?.valorPizza, e?.tags]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
