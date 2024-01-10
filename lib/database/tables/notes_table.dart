import 'package:drift/drift.dart';

@DataClassName('NoteEntry')
class NotesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withDefault(const Constant(''))();
  TextColumn get content => text().withDefault(const Constant(''))();
  DateTimeColumn get createDate =>
      dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updateDate =>
      dateTime().withDefault(Constant(DateTime.now()))();
}
