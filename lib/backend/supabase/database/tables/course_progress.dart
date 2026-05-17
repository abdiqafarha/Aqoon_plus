import '../database.dart';

class CourseProgressTable extends SupabaseTable<CourseProgressRow> {
  @override
  String get tableName => 'course_progress';

  @override
  CourseProgressRow createRow(Map<String, dynamic> data) =>
      CourseProgressRow(data);
}

class CourseProgressRow extends SupabaseDataRow {
  CourseProgressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CourseProgressTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get courseId => getField<String>('course_id');
  set courseId(String? value) => setField<String>('course_id', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  bool? get isSaved => getField<bool>('is_saved');
  set isSaved(bool? value) => setField<bool>('is_saved', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get watchedTime => getField<double>('watched_time');
  set watchedTime(double? value) => setField<double>('watched_time', value);

  bool? get isLearning => getField<bool>('is_learning');
  set isLearning(bool? value) => setField<bool>('is_learning', value);

  double? get progress => getField<double>('progress');
  set progress(double? value) => setField<double>('progress', value);
}
