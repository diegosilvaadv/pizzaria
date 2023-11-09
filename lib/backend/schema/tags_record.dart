import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TagsRecord extends FirestoreRecord {
  TagsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeTags" field.
  String? _nomeTags;
  String get nomeTags => _nomeTags ?? '';
  bool hasNomeTags() => _nomeTags != null;

  void _initializeFields() {
    _nomeTags = snapshotData['nomeTags'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tags');

  static Stream<TagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TagsRecord.fromSnapshot(s));

  static Future<TagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TagsRecord.fromSnapshot(s));

  static TagsRecord fromSnapshot(DocumentSnapshot snapshot) => TagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTagsRecordData({
  String? nomeTags,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeTags': nomeTags,
    }.withoutNulls,
  );

  return firestoreData;
}

class TagsRecordDocumentEquality implements Equality<TagsRecord> {
  const TagsRecordDocumentEquality();

  @override
  bool equals(TagsRecord? e1, TagsRecord? e2) {
    return e1?.nomeTags == e2?.nomeTags;
  }

  @override
  int hash(TagsRecord? e) => const ListEquality().hash([e?.nomeTags]);

  @override
  bool isValidKey(Object? o) => o is TagsRecord;
}
