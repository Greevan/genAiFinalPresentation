import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenaiRecord extends FirestoreRecord {
  GenaiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "number_tasks" field.
  int? _numberTasks;
  int get numberTasks => _numberTasks ?? 0;
  bool hasNumberTasks() => _numberTasks != null;

  // "completed_tasks" field.
  int? _completedTasks;
  int get completedTasks => _completedTasks ?? 0;
  bool hasCompletedTasks() => _completedTasks != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _projectName = snapshotData['project_name'] as String?;
    _description = snapshotData['description'] as String?;
    _numberTasks = castToType<int>(snapshotData['number_tasks']);
    _completedTasks = castToType<int>(snapshotData['completed_tasks']);
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('genai');

  static Stream<GenaiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GenaiRecord.fromSnapshot(s));

  static Future<GenaiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GenaiRecord.fromSnapshot(s));

  static GenaiRecord fromSnapshot(DocumentSnapshot snapshot) => GenaiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GenaiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GenaiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GenaiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GenaiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGenaiRecordData({
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'project_name': projectName,
      'description': description,
      'number_tasks': numberTasks,
      'completed_tasks': completedTasks,
      'last_edited': lastEdited,
      'time_created': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class GenaiRecordDocumentEquality implements Equality<GenaiRecord> {
  const GenaiRecordDocumentEquality();

  @override
  bool equals(GenaiRecord? e1, GenaiRecord? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.description == e2?.description &&
        e1?.numberTasks == e2?.numberTasks &&
        e1?.completedTasks == e2?.completedTasks &&
        e1?.lastEdited == e2?.lastEdited &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(GenaiRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.description,
        e?.numberTasks,
        e?.completedTasks,
        e?.lastEdited,
        e?.timeCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is GenaiRecord;
}
