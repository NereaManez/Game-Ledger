// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GamesTable extends Games with TableInfo<$GamesTable, GameData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _platformMeta = const VerificationMeta(
    'platform',
  );
  @override
  late final GeneratedColumn<String> platform = GeneratedColumn<String>(
    'platform',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pricePaidMeta = const VerificationMeta(
    'pricePaid',
  );
  @override
  late final GeneratedColumn<double> pricePaid = GeneratedColumn<double>(
    'price_paid',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hoursPlayedMeta = const VerificationMeta(
    'hoursPlayed',
  );
  @override
  late final GeneratedColumn<double> hoursPlayed = GeneratedColumn<double>(
    'hours_played',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
    'rating',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchaseDateMeta = const VerificationMeta(
    'purchaseDate',
  );
  @override
  late final GeneratedColumn<DateTime> purchaseDate = GeneratedColumn<DateTime>(
    'purchase_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    platform,
    status,
    pricePaid,
    hoursPlayed,
    rating,
    purchaseDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'games';
  @override
  VerificationContext validateIntegrity(
    Insertable<GameData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('platform')) {
      context.handle(
        _platformMeta,
        platform.isAcceptableOrUnknown(data['platform']!, _platformMeta),
      );
    } else if (isInserting) {
      context.missing(_platformMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('price_paid')) {
      context.handle(
        _pricePaidMeta,
        pricePaid.isAcceptableOrUnknown(data['price_paid']!, _pricePaidMeta),
      );
    } else if (isInserting) {
      context.missing(_pricePaidMeta);
    }
    if (data.containsKey('hours_played')) {
      context.handle(
        _hoursPlayedMeta,
        hoursPlayed.isAcceptableOrUnknown(
          data['hours_played']!,
          _hoursPlayedMeta,
        ),
      );
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    }
    if (data.containsKey('purchase_date')) {
      context.handle(
        _purchaseDateMeta,
        purchaseDate.isAcceptableOrUnknown(
          data['purchase_date']!,
          _purchaseDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_purchaseDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GameData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      platform: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}platform'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      pricePaid: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price_paid'],
      )!,
      hoursPlayed: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}hours_played'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rating'],
      ),
      purchaseDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}purchase_date'],
      )!,
    );
  }

  @override
  $GamesTable createAlias(String alias) {
    return $GamesTable(attachedDatabase, alias);
  }
}

class GameData extends DataClass implements Insertable<GameData> {
  final int id;
  final String title;
  final String platform;
  final String status;
  final double pricePaid;
  final double hoursPlayed;
  final double? rating;
  final DateTime purchaseDate;
  const GameData({
    required this.id,
    required this.title,
    required this.platform,
    required this.status,
    required this.pricePaid,
    required this.hoursPlayed,
    this.rating,
    required this.purchaseDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['platform'] = Variable<String>(platform);
    map['status'] = Variable<String>(status);
    map['price_paid'] = Variable<double>(pricePaid);
    map['hours_played'] = Variable<double>(hoursPlayed);
    if (!nullToAbsent || rating != null) {
      map['rating'] = Variable<double>(rating);
    }
    map['purchase_date'] = Variable<DateTime>(purchaseDate);
    return map;
  }

  GamesCompanion toCompanion(bool nullToAbsent) {
    return GamesCompanion(
      id: Value(id),
      title: Value(title),
      platform: Value(platform),
      status: Value(status),
      pricePaid: Value(pricePaid),
      hoursPlayed: Value(hoursPlayed),
      rating: rating == null && nullToAbsent
          ? const Value.absent()
          : Value(rating),
      purchaseDate: Value(purchaseDate),
    );
  }

  factory GameData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GameData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      platform: serializer.fromJson<String>(json['platform']),
      status: serializer.fromJson<String>(json['status']),
      pricePaid: serializer.fromJson<double>(json['pricePaid']),
      hoursPlayed: serializer.fromJson<double>(json['hoursPlayed']),
      rating: serializer.fromJson<double?>(json['rating']),
      purchaseDate: serializer.fromJson<DateTime>(json['purchaseDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'platform': serializer.toJson<String>(platform),
      'status': serializer.toJson<String>(status),
      'pricePaid': serializer.toJson<double>(pricePaid),
      'hoursPlayed': serializer.toJson<double>(hoursPlayed),
      'rating': serializer.toJson<double?>(rating),
      'purchaseDate': serializer.toJson<DateTime>(purchaseDate),
    };
  }

  GameData copyWith({
    int? id,
    String? title,
    String? platform,
    String? status,
    double? pricePaid,
    double? hoursPlayed,
    Value<double?> rating = const Value.absent(),
    DateTime? purchaseDate,
  }) => GameData(
    id: id ?? this.id,
    title: title ?? this.title,
    platform: platform ?? this.platform,
    status: status ?? this.status,
    pricePaid: pricePaid ?? this.pricePaid,
    hoursPlayed: hoursPlayed ?? this.hoursPlayed,
    rating: rating.present ? rating.value : this.rating,
    purchaseDate: purchaseDate ?? this.purchaseDate,
  );
  GameData copyWithCompanion(GamesCompanion data) {
    return GameData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      platform: data.platform.present ? data.platform.value : this.platform,
      status: data.status.present ? data.status.value : this.status,
      pricePaid: data.pricePaid.present ? data.pricePaid.value : this.pricePaid,
      hoursPlayed: data.hoursPlayed.present
          ? data.hoursPlayed.value
          : this.hoursPlayed,
      rating: data.rating.present ? data.rating.value : this.rating,
      purchaseDate: data.purchaseDate.present
          ? data.purchaseDate.value
          : this.purchaseDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GameData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('platform: $platform, ')
          ..write('status: $status, ')
          ..write('pricePaid: $pricePaid, ')
          ..write('hoursPlayed: $hoursPlayed, ')
          ..write('rating: $rating, ')
          ..write('purchaseDate: $purchaseDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    platform,
    status,
    pricePaid,
    hoursPlayed,
    rating,
    purchaseDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GameData &&
          other.id == this.id &&
          other.title == this.title &&
          other.platform == this.platform &&
          other.status == this.status &&
          other.pricePaid == this.pricePaid &&
          other.hoursPlayed == this.hoursPlayed &&
          other.rating == this.rating &&
          other.purchaseDate == this.purchaseDate);
}

class GamesCompanion extends UpdateCompanion<GameData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> platform;
  final Value<String> status;
  final Value<double> pricePaid;
  final Value<double> hoursPlayed;
  final Value<double?> rating;
  final Value<DateTime> purchaseDate;
  const GamesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.platform = const Value.absent(),
    this.status = const Value.absent(),
    this.pricePaid = const Value.absent(),
    this.hoursPlayed = const Value.absent(),
    this.rating = const Value.absent(),
    this.purchaseDate = const Value.absent(),
  });
  GamesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String platform,
    required String status,
    required double pricePaid,
    this.hoursPlayed = const Value.absent(),
    this.rating = const Value.absent(),
    required DateTime purchaseDate,
  }) : title = Value(title),
       platform = Value(platform),
       status = Value(status),
       pricePaid = Value(pricePaid),
       purchaseDate = Value(purchaseDate);
  static Insertable<GameData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? platform,
    Expression<String>? status,
    Expression<double>? pricePaid,
    Expression<double>? hoursPlayed,
    Expression<double>? rating,
    Expression<DateTime>? purchaseDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (platform != null) 'platform': platform,
      if (status != null) 'status': status,
      if (pricePaid != null) 'price_paid': pricePaid,
      if (hoursPlayed != null) 'hours_played': hoursPlayed,
      if (rating != null) 'rating': rating,
      if (purchaseDate != null) 'purchase_date': purchaseDate,
    });
  }

  GamesCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? platform,
    Value<String>? status,
    Value<double>? pricePaid,
    Value<double>? hoursPlayed,
    Value<double?>? rating,
    Value<DateTime>? purchaseDate,
  }) {
    return GamesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      platform: platform ?? this.platform,
      status: status ?? this.status,
      pricePaid: pricePaid ?? this.pricePaid,
      hoursPlayed: hoursPlayed ?? this.hoursPlayed,
      rating: rating ?? this.rating,
      purchaseDate: purchaseDate ?? this.purchaseDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (platform.present) {
      map['platform'] = Variable<String>(platform.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (pricePaid.present) {
      map['price_paid'] = Variable<double>(pricePaid.value);
    }
    if (hoursPlayed.present) {
      map['hours_played'] = Variable<double>(hoursPlayed.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (purchaseDate.present) {
      map['purchase_date'] = Variable<DateTime>(purchaseDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GamesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('platform: $platform, ')
          ..write('status: $status, ')
          ..write('pricePaid: $pricePaid, ')
          ..write('hoursPlayed: $hoursPlayed, ')
          ..write('rating: $rating, ')
          ..write('purchaseDate: $purchaseDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GamesTable games = $GamesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [games];
}

typedef $$GamesTableCreateCompanionBuilder =
    GamesCompanion Function({
      Value<int> id,
      required String title,
      required String platform,
      required String status,
      required double pricePaid,
      Value<double> hoursPlayed,
      Value<double?> rating,
      required DateTime purchaseDate,
    });
typedef $$GamesTableUpdateCompanionBuilder =
    GamesCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> platform,
      Value<String> status,
      Value<double> pricePaid,
      Value<double> hoursPlayed,
      Value<double?> rating,
      Value<DateTime> purchaseDate,
    });

class $$GamesTableFilterComposer extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get platform => $composableBuilder(
    column: $table.platform,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pricePaid => $composableBuilder(
    column: $table.pricePaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get hoursPlayed => $composableBuilder(
    column: $table.hoursPlayed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GamesTableOrderingComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get platform => $composableBuilder(
    column: $table.platform,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pricePaid => $composableBuilder(
    column: $table.pricePaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get hoursPlayed => $composableBuilder(
    column: $table.hoursPlayed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get platform =>
      $composableBuilder(column: $table.platform, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<double> get pricePaid =>
      $composableBuilder(column: $table.pricePaid, builder: (column) => column);

  GeneratedColumn<double> get hoursPlayed => $composableBuilder(
    column: $table.hoursPlayed,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<DateTime> get purchaseDate => $composableBuilder(
    column: $table.purchaseDate,
    builder: (column) => column,
  );
}

class $$GamesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GamesTable,
          GameData,
          $$GamesTableFilterComposer,
          $$GamesTableOrderingComposer,
          $$GamesTableAnnotationComposer,
          $$GamesTableCreateCompanionBuilder,
          $$GamesTableUpdateCompanionBuilder,
          (GameData, BaseReferences<_$AppDatabase, $GamesTable, GameData>),
          GameData,
          PrefetchHooks Function()
        > {
  $$GamesTableTableManager(_$AppDatabase db, $GamesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> platform = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<double> pricePaid = const Value.absent(),
                Value<double> hoursPlayed = const Value.absent(),
                Value<double?> rating = const Value.absent(),
                Value<DateTime> purchaseDate = const Value.absent(),
              }) => GamesCompanion(
                id: id,
                title: title,
                platform: platform,
                status: status,
                pricePaid: pricePaid,
                hoursPlayed: hoursPlayed,
                rating: rating,
                purchaseDate: purchaseDate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String platform,
                required String status,
                required double pricePaid,
                Value<double> hoursPlayed = const Value.absent(),
                Value<double?> rating = const Value.absent(),
                required DateTime purchaseDate,
              }) => GamesCompanion.insert(
                id: id,
                title: title,
                platform: platform,
                status: status,
                pricePaid: pricePaid,
                hoursPlayed: hoursPlayed,
                rating: rating,
                purchaseDate: purchaseDate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GamesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GamesTable,
      GameData,
      $$GamesTableFilterComposer,
      $$GamesTableOrderingComposer,
      $$GamesTableAnnotationComposer,
      $$GamesTableCreateCompanionBuilder,
      $$GamesTableUpdateCompanionBuilder,
      (GameData, BaseReferences<_$AppDatabase, $GamesTable, GameData>),
      GameData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GamesTableTableManager get games =>
      $$GamesTableTableManager(_db, _db.games);
}
