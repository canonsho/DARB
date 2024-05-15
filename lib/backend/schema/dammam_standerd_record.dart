import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DammamStanderdRecord extends FirestoreRecord {
  DammamStanderdRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PlaceImage" field.
  String? _placeImage;
  String get placeImage => _placeImage ?? '';
  bool hasPlaceImage() => _placeImage != null;

  // "placeName" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "placeDescription" field.
  String? _placeDescription;
  String get placeDescription => _placeDescription ?? '';
  bool hasPlaceDescription() => _placeDescription != null;

  // "placeLocation" field.
  String? _placeLocation;
  String get placeLocation => _placeLocation ?? '';
  bool hasPlaceLocation() => _placeLocation != null;

  void _initializeFields() {
    _placeImage = snapshotData['PlaceImage'] as String?;
    _placeName = snapshotData['placeName'] as String?;
    _placeDescription = snapshotData['placeDescription'] as String?;
    _placeLocation = snapshotData['placeLocation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DammamStanderd');

  static Stream<DammamStanderdRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DammamStanderdRecord.fromSnapshot(s));

  static Future<DammamStanderdRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DammamStanderdRecord.fromSnapshot(s));

  static DammamStanderdRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DammamStanderdRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DammamStanderdRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DammamStanderdRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DammamStanderdRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DammamStanderdRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDammamStanderdRecordData({
  String? placeImage,
  String? placeName,
  String? placeDescription,
  String? placeLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PlaceImage': placeImage,
      'placeName': placeName,
      'placeDescription': placeDescription,
      'placeLocation': placeLocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class DammamStanderdRecordDocumentEquality
    implements Equality<DammamStanderdRecord> {
  const DammamStanderdRecordDocumentEquality();

  @override
  bool equals(DammamStanderdRecord? e1, DammamStanderdRecord? e2) {
    return e1?.placeImage == e2?.placeImage &&
        e1?.placeName == e2?.placeName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeLocation == e2?.placeLocation;
  }

  @override
  int hash(DammamStanderdRecord? e) => const ListEquality().hash(
      [e?.placeImage, e?.placeName, e?.placeDescription, e?.placeLocation]);

  @override
  bool isValidKey(Object? o) => o is DammamStanderdRecord;
}
