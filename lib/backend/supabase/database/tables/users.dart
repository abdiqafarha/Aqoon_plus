import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  double? get coursesTaken => getField<double>('Courses_taken');
  set coursesTaken(double? value) => setField<double>('Courses_taken', value);

  double? get certificatesEarned => getField<double>('Certificates_earned');
  set certificatesEarned(double? value) =>
      setField<double>('Certificates_earned', value);

  double? get points => getField<double>('Points');
  set points(double? value) => setField<double>('Points', value);

  String? get profile => getField<String>('profile');
  set profile(String? value) => setField<String>('profile', value);
}
