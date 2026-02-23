import 'package:drift/drift.dart';
import 'game_table.dart';
import '../../../domain/entities/game.dart';
import 'native_connection.dart' as connection;

// Specify the file that Drift will generate
part 'app_database.g.dart';

@DriftDatabase(tables: [Games])
class AppDatabase extends _$AppDatabase {
  // Pass the native connection to the superclass
  AppDatabase() : super(connection.openConnection());

  @override
  int get schemaVersion => 1;

  // --- BASIC CRUD OPERATIONS ---

  Future<int> insertGame(GamesCompanion entry) {
    return into(games).insert(entry);
  }

  Future<List<Game>> getAllGames() async {
    final dataList = await select(games).get();
    return dataList.map((data) => data.toDomain()).toList();
  }

  Future<bool> updateGame(GameData data) {
    return update(games).replace(data);
  }

  Future<int> deleteGame(int id) {
    return (delete(games)..where((tbl) => tbl.id.equals(id))).go();
  }
}