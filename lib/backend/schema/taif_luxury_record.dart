import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TaifLuxuryRecord extends FirestoreRecord {
  TaifLuxuryRecord._(
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
      FirebaseFirestore.instance.collection('TaifLuxury');

  static Stream<TaifLuxuryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaifLuxuryRecord.fromSnapshot(s));

  static Future<TaifLuxuryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaifLuxuryRecord.fromSnapshot(s));

  static TaifLuxuryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TaifLuxuryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaifLuxuryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaifLuxuryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaifLuxuryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaifLuxuryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaifLuxuryRecordData({
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

class TaifLuxuryRecordDocumentEquality implements Equality<TaifLuxuryRecord> {
  const TaifLuxuryRecordDocumentEquality();

  @override
  bool equals(TaifLuxuryRecord? e1, TaifLuxuryRecord? e2) {
    return e1?.placeImage == e2?.placeImage &&
        e1?.placeName == e2?.placeName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeLocation == e2?.placeLocation;
  }

  @override
  int hash(TaifLuxuryRecord? e) => const ListEquality().hash(
      [e?.placeImage, e?.placeName, e?.placeDescription, e?.placeLocation]);

  @override
  bool isValidKey(Object? o) => o is TaifLuxuryRecord;
}
