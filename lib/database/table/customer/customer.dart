import 'package:desktopapp/config_singleton.dart';
import 'package:desktopapp/database/database.dart';
import 'package:moor/moor.dart';

@DataClassName('Customer')
class Customers extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
  TextColumn get address => text()();
  TextColumn get phone => text()();

  DateTimeColumn get createDate => dateTime().nullable()();

  IntColumn get employeeDeliveryId => integer()
      .nullable()
      .customConstraint('NULLABLE REFERENCES employeeDelivery(id)')();
}

///set up after build runner
class CustomersProvider {
  Database get db => getIt<Database>();
  $CustomersTable get table => db.customers;
  Future<int> createCustomer(CustomersCompanion customer) async {
    ///get id
    try {
      // final _customer = await (db.select(table)
      //       ..orderBy([
      //         (u) => OrderingTerm(expression: u.id, mode: OrderingMode.desc),
      //       ]))
      //     .get();
      // customer = customer.copyWith(id: Value(_customer.first.id + 1));
      await db.createTableRow(table, customer);
      return 1;
    } catch (e, t) {
      // TODO
      print(e);
      print(t);
    }
    return 0;
  }

  /// Updates the row in the database represents this entry by writing the
  /// updated data.
  Future<void> updateCustomer(Customer customer) async {
    return await db.updateTableRow(table, customer);
  }

  Future<void> deleteCustomer(Customer customer) {
    return db.deleteTableRow(table, customer);
  }

  Future<int> deleteAll() async {
    return await db.deleteTableAll(table);
  }

  Future<List<Customer>> getAllCustomer() async {
    List<Customer> list = <Customer>[];
    print("getAllCustomer");
    var data = await db.select(table).get();
    // var data = db
    //     .customSelect(
    //       'SELECT *'
    //       'FROM Customers c ',
    //       readsFrom: {table},
    //     )
    //     .map((row) {
    //       // when we have the result set, map each row to the data class
    //       final hasId = row.data['id'] != null;

    //       return hasId ? Custome.fromData(row.data, db) : null;
    //     })
    //     .watch().first;

    list.addAll(data);

    return list;
  }
}
