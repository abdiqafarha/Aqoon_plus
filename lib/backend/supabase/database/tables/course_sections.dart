import '../database.dart';

class CourseSectionsTable extends SupabaseTable<CourseSectionsRow> {
  @override
  String get tableName => 'course_sections';

  @override
  CourseSectionsRow createRow(Map<String, dynamic> data) =>
      CourseSectionsRow(data);
}

class CourseSectionsRow extends SupabaseDataRow {
  CourseSectionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CourseSectionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  int? get courseId => getField<int>('course_id');
  set courseId(int? value) => setField<int>('course_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get orderIndex => getField<int>('order_index');
  set orderIndex(int? value) => setField<int>('order_index', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
