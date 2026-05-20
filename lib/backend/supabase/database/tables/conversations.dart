import '../database.dart';

class ConversationsTable extends SupabaseTable<ConversationsRow> {
  @override
  String get tableName => 'conversations';

  @override
  ConversationsRow createRow(Map<String, dynamic> data) =>
      ConversationsRow(data);
}

class ConversationsRow extends SupabaseDataRow {
  ConversationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get lastMessageAt => getField<DateTime>('last_message_at');
  set lastMessageAt(DateTime? value) =>
      setField<DateTime>('last_message_at', value);

  String? get supportAgentId => getField<String>('support_agent_id');
  set supportAgentId(String? value) =>
      setField<String>('support_agent_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
