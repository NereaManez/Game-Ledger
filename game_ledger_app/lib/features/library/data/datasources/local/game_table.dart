import 'package:drift/drift.dart';
import 'package:game_ledger_app/features/library/data/datasources/local/app_database.dart';
import '../../../domain/entities/game.dart';

// 1. OBLIGAMOS a Drift a llamar a la fila 'GameData' para no chocar con nuestra entidad 'Game'
@DataClassName('GameData')
class Games extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 100)();
  TextColumn get platform => text()();
  TextColumn get status => text()();
  RealColumn get pricePaid => real()();
  RealColumn get hoursPlayed => real().withDefault(const Constant(0.0))();
  RealColumn get rating => real().nullable()();
  DateTimeColumn get purchaseDate => dateTime()();
}

// 2. La extensión se hace sobre la clase GENERADA (GameData), no sobre la Tabla (Games)
extension GameDataMapper on GameData {
  Game toDomain() {
    return Game(
      id: id,
      title: title,
      platform: platform,
      status: status,
      pricePaid: pricePaid,
      hoursPlayed: hoursPlayed,
      rating: rating,
      purchaseDate: purchaseDate,
    );
  }
}