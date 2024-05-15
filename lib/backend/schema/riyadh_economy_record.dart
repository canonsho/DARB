import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RiyadhEconomyRecord extends FirestoreRecord {
  RiyadhEconomyRecord._(
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
      FirebaseFirestore.instance.collection('RiyadhEconomy');

  static Stream<RiyadhEconomyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RiyadhEconomyRecord.fromSnapshot(s));

  static Future<RiyadhEconomyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RiyadhEconomyRecord.fromSnapshot(s));

  static RiyadhEconomyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RiyadhEconomyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RiyadhEconomyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RiyadhEconomyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RiyadhEconomyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RiyadhEconomyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRiyadhEconomyRecordData({
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

class RiyadhEconomyRecordDocumentEquality
    implements Equality<RiyadhEconomyRecord> {
  const RiyadhEconomyRecordDocumentEquality();

  @override
  bool equals(RiyadhEconomyRecord? e1, RiyadhEconomyRecord? e2) {
    return e1?.placeImage == e2?.placeImage &&
        e1?.placeName == e2?.placeName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeLocation == e2?.placeLocation;
  }

  @override
  int hash(RiyadhEconomyRecord? e) => const ListEquality().hash(
      [e?.placeImage, e?.placeName, e?.placeDescription, e?.placeLocation]);

  @override
  bool isValidKey(Object? o) => o is RiyadhEconomyRecord;
}
