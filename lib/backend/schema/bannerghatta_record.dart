import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerghattaRecord extends FirestoreRecord {
  BannerghattaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  bool hasDistance() => _distance != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "reviews" field.
  List<String>? _reviews;
  List<String> get reviews => _reviews ?? const [];
  bool hasReviews() => _reviews != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _distance = castToType<double>(snapshotData['distance']);
    _rating = castToType<double>(snapshotData['rating']);
    _reviews = getDataList(snapshotData['reviews']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bannerghatta')
          : FirebaseFirestore.instance.collectionGroup('bannerghatta');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bannerghatta').doc();

  static Stream<BannerghattaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerghattaRecord.fromSnapshot(s));

  static Future<BannerghattaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannerghattaRecord.fromSnapshot(s));

  static BannerghattaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannerghattaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerghattaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerghattaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerghattaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerghattaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerghattaRecordData({
  String? name,
  double? distance,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'distance': distance,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerghattaRecordDocumentEquality
    implements Equality<BannerghattaRecord> {
  const BannerghattaRecordDocumentEquality();

  @override
  bool equals(BannerghattaRecord? e1, BannerghattaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.distance == e2?.distance &&
        e1?.rating == e2?.rating &&
        listEquality.equals(e1?.reviews, e2?.reviews);
  }

  @override
  int hash(BannerghattaRecord? e) =>
      const ListEquality().hash([e?.name, e?.distance, e?.rating, e?.reviews]);

  @override
  bool isValidKey(Object? o) => o is BannerghattaRecord;
}
