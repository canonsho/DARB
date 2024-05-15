import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AllPlacesSearchRecord extends FirestoreRecord {
  AllPlacesSearchRecord._(
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

  // "Address" field.
  LatLng? _address;
  LatLng? get address => _address;
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _placeImage = snapshotData['PlaceImage'] as String?;
    _placeName = snapshotData['placeName'] as String?;
    _placeDescription = snapshotData['placeDescription'] as String?;
    _placeLocation = snapshotData['placeLocation'] as String?;
    _address = snapshotData['Address'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AllPlacesSearch');

  static Stream<AllPlacesSearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllPlacesSearchRecord.fromSnapshot(s));

  static Future<AllPlacesSearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllPlacesSearchRecord.fromSnapshot(s));

  static AllPlacesSearchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllPlacesSearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllPlacesSearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllPlacesSearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllPlacesSearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllPlacesSearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllPlacesSearchRecordData({
  String? placeImage,
  String? placeName,
  String? placeDescription,
  String? placeLocation,
  LatLng? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PlaceImage': placeImage,
      'placeName': placeName,
      'placeDescription': placeDescription,
      'placeLocation': placeLocation,
      'Address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllPlacesSearchRecordDocumentEquality
    implements Equality<AllPlacesSearchRecord> {
  const AllPlacesSearchRecordDocumentEquality();

  @override
  bool equals(AllPlacesSearchRecord? e1, AllPlacesSearchRecord? e2) {
    return e1?.placeImage == e2?.placeImage &&
        e1?.placeName == e2?.placeName &&
        e1?.placeDescription == e2?.placeDescription &&
        e1?.placeLocation == e2?.placeLocation &&
        e1?.address == e2?.address;
  }

  @override
  int hash(AllPlacesSearchRecord? e) => const ListEquality().hash([
        e?.placeImage,
        e?.placeName,
        e?.placeDescription,
        e?.placeLocation,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is AllPlacesSearchRecord;
}
