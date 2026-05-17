import '../database.dart';

class LessonsTable extends SupabaseTable<LessonsRow> {
  @override
  String get tableName => 'Lessons';

  @override
  LessonsRow createRow(Map<String, dynamic> data) => LessonsRow(data);
}

class LessonsRow extends SupabaseDataRow {
  LessonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LessonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get sectionId => getField<String>('section_id');
  set sectionId(String? value) => setField<String>('section_id', value);

  String? get title => getField<String>('Title');
  set title(String? value) => setField<String>('Title', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  double? get duration => getField<double>('duration');
  set duration(double? value) => setField<double>('duration', value);

  double? get orderIndex => getField<double>('order_index');
  set orderIndex(double? value) => setField<double>('order_index', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get textContent => getField<String>('text_content');
  set textContent(String? value) => setField<String>('text_content', value);
}
