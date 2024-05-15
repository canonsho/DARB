import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TripSummaryRecord extends FirestoreRecord {
  TripSummaryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nameSummary" field.
  List<DocumentReference>? _nameSummary;
  List<DocumentReference> get nameSummary => _nameSummary ?? const [];
  bool hasNameSummary() => _nameSummary != null;

  // "describtionSummary" field.
  List<DocumentReference>? _describtionSummary;
  List<DocumentReference> get describtionSummary =>
      _describtionSummary ?? const [];
  bool hasDescribtionSummary() => _describtionSummary != null;

  // "imageSummary" field.
  DocumentReference? _imageSummary;
  DocumentReference? get imageSummary => _imageSummary;
  bool hasImageSummary() => _imageSummary != null;

  void _initializeFields() {
    _nameSummary = getDataList(snapshotData['nameSummary']);
    _describtionSummary = getDataList(snapshotData['describtionSummary']);
    _imageSummary = snapshotData['imageSummary'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TripSummary');

  static Stream<TripSummaryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TripSummaryRecord.fromSnapshot(s));

  static Future<TripSummaryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TripSummaryRecord.fromSnapshot(s));

  static TripSummaryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TripSummaryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TripSummaryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TripSummaryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TripSummaryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TripSummaryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTripSummaryRecordData({
  DocumentReference? imageSummary,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageSummary': imageSummary,
    }.withoutNulls,
  );

  return firestoreData;
}

class TripSummaryRecordDocumentEquality implements Equality<TripSummaryRecord> {
  const TripSummaryRecordDocumentEquality();

  @override
  bool equals(TripSummaryRecord? e1, TripSummaryRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.nameSummary, e2?.nameSummary) &&
        listEquality.equals(e1?.describtionSummary, e2?.describtionSummary) &&
        e1?.imageSummary == e2?.imageSummary;
  }

  @override
  int hash(TripSummaryRecord? e) => const ListEquality()
      .hash([e?.nameSummary, e?.describtionSummary, e?.imageSummary]);

  @override
  bool isValidKey(Object? o) => o is TripSummaryRecord;
}
