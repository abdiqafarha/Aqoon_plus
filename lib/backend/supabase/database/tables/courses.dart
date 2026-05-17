import '../database.dart';

class CoursesTable extends SupabaseTable<CoursesRow> {
  @override
  String get tableName => 'Courses';

  @override
  CoursesRow createRow(Map<String, dynamic> data) => CoursesRow(data);
}

class CoursesRow extends SupabaseDataRow {
  CoursesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CoursesTable();

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get thumbnail => getField<String>('thumbnail');
  set thumbnail(String? value) => setField<String>('thumbnail', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  bool? get isPublished => getField<bool>('is_published');
  set isPublished(bool? value) => setField<bool>('is_published', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get instructorId => getField<String>('instructor_id');
  set instructorId(String? value) => setField<String>('instructor_id', value);

  String? get instrutorName => getField<String>('instrutor_Name');
  set instrutorName(String? value) => setField<String>('instrutor_Name', value);

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  double? get reviews => getField<double>('Reviews');
  set reviews(double? value) => setField<double>('Reviews', value);

  String? get level => getField<String>('Level');
  set level(String? value) => setField<String>('Level', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);
}
