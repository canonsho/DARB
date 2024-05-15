import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RiyadhLuxuryRecord extends FirestoreRecord {
  RiyadhLuxuryRecord._(
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
      FirebaseFirestore.instance.collection('RiyadhLuxury');

  static Stream<RiyadhLuxuryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RiyadhLuxuryRecord.fromSnapshot(s));

  static Future<RiyadhLuxuryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RiyadhLuxuryRecord.fromSnapshot(s));

  static RiyadhLuxuryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RiyadhLuxuryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RiyadhLuxuryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RiyadhLuxuryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RiyadhLuxuryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RiyadhLuxuryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRiyadhLuxuryRecordData({
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

class RiyadhLuxuryRecordDocumentEquality
    implements Equality<RiyadhLuxuryRecord> {
  const RiyadhLuxuryRecordDocumentEquality();

  @override
  bool equals(RiyadhLuxuryRecord? e1, RiyadhLuxuryRecord? e2) {
    return e1?.placeImage == e2?.placeImage &&
        e1?.placeName == e2?.placeName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeLocation == e2?.placeLocation;
  }

  @override
  int hash(RiyadhLuxuryRecord? e) => const ListEquality().hash(
      [e?.placeImage, e?.placeName, e?.placeDescription, e?.placeLocation]);

  @override
  bool isValidKey(Object? o) => o is RiyadhLuxuryRecord;
}
