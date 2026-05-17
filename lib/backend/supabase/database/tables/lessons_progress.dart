import '../database.dart';

class LessonsProgressTable extends SupabaseTable<LessonsProgressRow> {
  @override
  String get tableName => 'lessons_progress';

  @override
  LessonsProgressRow createRow(Map<String, dynamic> data) =>
      LessonsProgressRow(data);
}

class LessonsProgressRow extends SupabaseDataRow {
  LessonsProgressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LessonsProgressTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get lessonId => getField<String>('lesson_id');
  set lessonId(String? value) => setField<String>('lesson_id', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  bool? get isSaved => getField<bool>('is_saved');
  set isSaved(bool? value) => setField<bool>('is_saved', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get watchedTime => getField<double>('watched_time');
  set watchedTime(double? value) => setField<double>('watched_time', value);

  bool? get isWatching => getField<bool>('is_watching');
  set isWatching(bool? value) => setField<bool>('is_watching', value);

  String? get courseName => getField<String>('Course Name');
  set courseName(String? value) => setField<String>('Course Name', value);
}
