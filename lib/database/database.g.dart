// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Customer extends DataClass implements Insertable<Customer> {
  final int id;
  final String name;
  final String address;
  final String phone;
  final DateTime? createDate;
  final int? employeeDeliveryId;
  Customer(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      this.createDate,
      this.employeeDeliveryId});
  factory Customer.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Customer(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone'])!,
      createDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_date']),
      employeeDeliveryId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}employee_delivery_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['address'] = Variable<String>(address);
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || createDate != null) {
      map['create_date'] = Variable<DateTime?>(createDate);
    }
    if (!nullToAbsent || employeeDeliveryId != null) {
      map['employee_delivery_id'] = Variable<int?>(employeeDeliveryId);
    }
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      id: Value(id),
      name: Value(name),
      address: Value(address),
      phone: Value(phone),
      createDate: createDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createDate),
      employeeDeliveryId: employeeDeliveryId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeDeliveryId),
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Customer(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      phone: serializer.fromJson<String>(json['phone']),
      createDate: serializer.fromJson<DateTime?>(json['createDate']),
      employeeDeliveryId: serializer.fromJson<int?>(json['employeeDeliveryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'phone': serializer.toJson<String>(phone),
      'createDate': serializer.toJson<DateTime?>(createDate),
      'employeeDeliveryId': serializer.toJson<int?>(employeeDeliveryId),
    };
  }

  Customer copyWith(
          {int? id,
          String? name,
          String? address,
          String? phone,
          DateTime? createDate,
          int? employeeDeliveryId}) =>
      Customer(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        createDate: createDate ?? this.createDate,
        employeeDeliveryId: employeeDeliveryId ?? this.employeeDeliveryId,
      );
  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('createDate: $createDate, ')
          ..write('employeeDeliveryId: $employeeDeliveryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, address, phone, createDate, employeeDeliveryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.id == this.id &&
          other.name == this.name &&
          other.address == this.address &&
          other.phone == this.phone &&
          other.createDate == this.createDate &&
          other.employeeDeliveryId == this.employeeDeliveryId);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> address;
  final Value<String> phone;
  final Value<DateTime?> createDate;
  final Value<int?> employeeDeliveryId;
  const CustomersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.createDate = const Value.absent(),
    this.employeeDeliveryId = const Value.absent(),
  });
  CustomersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String address,
    required String phone,
    this.createDate = const Value.absent(),
    this.employeeDeliveryId = const Value.absent(),
  })  : name = Value(name),
        address = Value(address),
        phone = Value(phone);
  static Insertable<Customer> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? address,
    Expression<String>? phone,
    Expression<DateTime?>? createDate,
    Expression<int?>? employeeDeliveryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (phone != null) 'phone': phone,
      if (createDate != null) 'create_date': createDate,
      if (employeeDeliveryId != null)
        'employee_delivery_id': employeeDeliveryId,
    });
  }

  CustomersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? address,
      Value<String>? phone,
      Value<DateTime?>? createDate,
      Value<int?>? employeeDeliveryId}) {
    return CustomersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      createDate: createDate ?? this.createDate,
      employeeDeliveryId: employeeDeliveryId ?? this.employeeDeliveryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (createDate.present) {
      map['create_date'] = Variable<DateTime?>(createDate.value);
    }
    if (employeeDeliveryId.present) {
      map['employee_delivery_id'] = Variable<int?>(employeeDeliveryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('createDate: $createDate, ')
          ..write('employeeDeliveryId: $employeeDeliveryId')
          ..write(')'))
        .toString();
  }
}

class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createDateMeta = const VerificationMeta('createDate');
  @override
  late final GeneratedColumn<DateTime?> createDate = GeneratedColumn<DateTime?>(
      'create_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _employeeDeliveryIdMeta =
      const VerificationMeta('employeeDeliveryId');
  @override
  late final GeneratedColumn<int?> employeeDeliveryId = GeneratedColumn<int?>(
      'employee_delivery_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NULLABLE REFERENCES employeeDelivery(id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, address, phone, createDate, employeeDeliveryId];
  @override
  String get aliasedName => _alias ?? 'customers';
  @override
  String get actualTableName => 'customers';
  @override
  VerificationContext validateIntegrity(Insertable<Customer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('create_date')) {
      context.handle(
          _createDateMeta,
          createDate.isAcceptableOrUnknown(
              data['create_date']!, _createDateMeta));
    }
    if (data.containsKey('employee_delivery_id')) {
      context.handle(
          _employeeDeliveryIdMeta,
          employeeDeliveryId.isAcceptableOrUnknown(
              data['employee_delivery_id']!, _employeeDeliveryIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Customer.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(attachedDatabase, alias);
  }
}

class EmployeeDelivery extends DataClass
    implements Insertable<EmployeeDelivery> {
  final int id;
  final String name;
  final DateTime? createDate;
  EmployeeDelivery({required this.id, required this.name, this.createDate});
  factory EmployeeDelivery.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EmployeeDelivery(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      createDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || createDate != null) {
      map['create_date'] = Variable<DateTime?>(createDate);
    }
    return map;
  }

  EmployeeDeliverysCompanion toCompanion(bool nullToAbsent) {
    return EmployeeDeliverysCompanion(
      id: Value(id),
      name: Value(name),
      createDate: createDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createDate),
    );
  }

  factory EmployeeDelivery.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EmployeeDelivery(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      createDate: serializer.fromJson<DateTime?>(json['createDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'createDate': serializer.toJson<DateTime?>(createDate),
    };
  }

  EmployeeDelivery copyWith({int? id, String? name, DateTime? createDate}) =>
      EmployeeDelivery(
        id: id ?? this.id,
        name: name ?? this.name,
        createDate: createDate ?? this.createDate,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeDelivery(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createDate: $createDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeDelivery &&
          other.id == this.id &&
          other.name == this.name &&
          other.createDate == this.createDate);
}

class EmployeeDeliverysCompanion extends UpdateCompanion<EmployeeDelivery> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime?> createDate;
  const EmployeeDeliverysCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.createDate = const Value.absent(),
  });
  EmployeeDeliverysCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.createDate = const Value.absent(),
  }) : name = Value(name);
  static Insertable<EmployeeDelivery> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime?>? createDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createDate != null) 'create_date': createDate,
    });
  }

  EmployeeDeliverysCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<DateTime?>? createDate}) {
    return EmployeeDeliverysCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createDate: createDate ?? this.createDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createDate.present) {
      map['create_date'] = Variable<DateTime?>(createDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeDeliverysCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createDate: $createDate')
          ..write(')'))
        .toString();
  }
}

class $EmployeeDeliverysTable extends EmployeeDeliverys
    with TableInfo<$EmployeeDeliverysTable, EmployeeDelivery> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeDeliverysTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createDateMeta = const VerificationMeta('createDate');
  @override
  late final GeneratedColumn<DateTime?> createDate = GeneratedColumn<DateTime?>(
      'create_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, createDate];
  @override
  String get aliasedName => _alias ?? 'employee_deliverys';
  @override
  String get actualTableName => 'employee_deliverys';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeDelivery> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('create_date')) {
      context.handle(
          _createDateMeta,
          createDate.isAcceptableOrUnknown(
              data['create_date']!, _createDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeDelivery map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EmployeeDelivery.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EmployeeDeliverysTable createAlias(String alias) {
    return $EmployeeDeliverysTable(attachedDatabase, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CustomersTable customers = $CustomersTable(this);
  late final $EmployeeDeliverysTable employeeDeliverys =
      $EmployeeDeliverysTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [customers, employeeDeliverys];
}
