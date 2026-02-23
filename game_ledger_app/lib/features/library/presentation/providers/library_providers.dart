import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/local/app_database.dart';
import '../../data/datasources/local/game_table.dart';
import '../../domain/entities/game.dart';

// Database Provider (Singleton)
final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

// Games List Provider (Reactive Stream)
final gamesListStreamProvider = StreamProvider.autoDispose<List<Game>>((ref) {
  final database = ref.watch(databaseProvider);
  
  // Select all games and map them to domain entities
  return database.select(database.games)
      .map((data) => data.toDomain())
      .watch(); 
});