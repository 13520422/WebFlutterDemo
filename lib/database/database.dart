import 'package:desktopapp/database/db_utils.dart';
import 'package:moor/moor.dart';
import 'package:undo/undo.dart';
import '../database/table/customer/customer.dart';
import '../database/table/employee_delivery/employee_delivery.dart';

export 'database/shared.dart';

part 'database.g.dart';

@UseMoor(
  tables: [Customers, EmployeeDeliverys],
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);
  final cs = ChangeStack();

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {},
      beforeOpen: (details) async {
        if (details.wasCreated) {}
      },
    );
  }

  Future<int> createTableRow(Table table, Insertable val) async {
    await insertRow(
      cs,
      table,
      val,
    );
    return 1;
  }

  Future<void> updateTableRow(Table table, Insertable val) async {
    return await updateRow(cs, table, val);
  }

  Future<void> deleteTableRow(Table table, Insertable val) async {
    return await deleteRow(cs, table, val);
  }

  Future<int> deleteTableAll(Table table) async {
    return await delete(table as TableInfo).go();
  }
}
