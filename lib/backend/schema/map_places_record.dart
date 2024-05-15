import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MapPlacesRecord extends FirestoreRecord {
  MapPlacesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "placeName" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "placeAddress" field.
  LatLng? _placeAddress;
  LatLng? get placeAddress => _placeAddress;
  bool hasPlaceAddress() => _placeAddress != null;

  void _initializeFields() {
    _placeName = snapshotData['placeName'] as String?;
    _placeAddress = snapshotData['placeAddress'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapPlaces');

  static Stream<MapPlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapPlacesRecord.fromSnapshot(s));

  static Future<MapPlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapPlacesRecord.fromSnapshot(s));

  static MapPlacesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MapPlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapPlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapPlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapPlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapPlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapPlacesRecordData({
  String? placeName,
  LatLng? placeAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'placeName': placeName,
      'placeAddress': placeAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class MapPlacesRecordDocumentEquality implements Equality<MapPlacesRecord> {
  const MapPlacesRecordDocumentEquality();

  @override
  bool equals(MapPlacesRecord? e1, MapPlacesRecord? e2) {
    return e1?.placeName == e2?.placeName &&
        e1?.placeAddress == e2?.placeAddress;
  }

  @override
  int hash(MapPlacesRecord? e) =>
      const ListEquality().hash([e?.placeName, e?.placeAddress]);

  @override
  bool isValidKey(Object? o) => o is MapPlacesRecord;
}
