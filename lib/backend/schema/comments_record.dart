import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "comment_user" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "comment_text" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "post_type" field.
  DocumentReference? _postType;
  DocumentReference? get postType => _postType;
  bool hasPostType() => _postType != null;

  // "commentNumber" field.
  int? _commentNumber;
  int get commentNumber => _commentNumber ?? 0;
  bool hasCommentNumber() => _commentNumber != null;

  void _initializeFields() {
    _commentUser = snapshotData['comment_user'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _commentText = snapshotData['comment_text'] as String?;
    _postType = snapshotData['post_type'] as DocumentReference?;
    _commentNumber = castToType<int>(snapshotData['commentNumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? commentUser,
  DateTime? createdTime,
  String? commentText,
  DocumentReference? postType,
  int? commentNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment_user': commentUser,
      'created_time': createdTime,
      'comment_text': commentText,
      'post_type': postType,
      'commentNumber': commentNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.commentUser == e2?.commentUser &&
        e1?.createdTime == e2?.createdTime &&
        e1?.commentText == e2?.commentText &&
        e1?.postType == e2?.postType &&
        e1?.commentNumber == e2?.commentNumber;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentUser,
        e?.createdTime,
        e?.commentText,
        e?.postType,
        e?.commentNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
