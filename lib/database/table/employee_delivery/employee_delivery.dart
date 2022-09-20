import 'package:desktopapp/config_singleton.dart';
import 'package:desktopapp/database/database.dart';
import 'package:moor/moor.dart';
import 'package:desktopapp/database/db_utils.dart';

@DataClassName('EmployeeDelivery')
class EmployeeDeliverys extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  DateTimeColumn get createDate => dateTime().nullable()();
}

///set up after build runner
class EmployeeDeliverysProvider {
  Database get db => getIt<Database>();
  $EmployeeDeliverysTable get table => db.employeeDeliverys;
  Future<int> createEmployeeDelivery(
      EmployeeDeliverysCompanion employee) async {
    ///get id
    // final _employee = await (db.select(table)
    //       ..orderBy([
    //         (u) => OrderingTerm(expression: u.id, mode: OrderingMode.desc),
    //       ]))
    //     .get();
    // employee = employee.copyWith(id: Value(_employee.first.id + 1));
    return await db.createTableRow(table, employee);
  }

  /// Updates the row in the database represents this entry by writing the
  /// updated data.
  Future<void> updateEmployeeDelivery(EmployeeDelivery employee) async {
    return await db.updateTableRow(table, employee);
  }

  Future<void> deleteEmployeeDelivery(EmployeeDelivery employee) {
    return db.deleteTableRow(table, employee);
  }

  Future<int> deleteAll() async {
    return await db.deleteTableAll(table);
  }

  Future<List<EmployeeDelivery>> getAllEmployeeDelivery() async {
    List<EmployeeDelivery> list = <EmployeeDelivery>[];

    var data = await db.select(table).get();

    // var data = db
    //     .customSelect(
    //       'SELECT *'
    //       'FROM EmployeeDeliverys c ',
    //       readsFrom: {table},
    //     )
    //     .map((row) {
    //       // when we have the result set, map each row to the data class
    //       final hasId = row.data['id'] != null;

    //       return hasId ? EmployeeDelivery.fromData(row.data, db) : null;
    //     })
    //     .watch()
    //     .first;
    list.addAll(data);

    return list;
  }
}
