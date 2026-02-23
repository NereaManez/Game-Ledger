import 'package:equatable/equatable.dart';

class Game extends Equatable {
  final int? id;
  final String title;
  final String platform;
  final String status; // 'Backlog', 'Playing', 'Completed', 'Dropped'
  final double pricePaid;
  final double hoursPlayed;  
  final double? rating; // from 0.0 to 10.0 (Nullable because unplayed games have no rating)
  final DateTime purchaseDate;

  const Game({
    this.id,
    required this.title,
    required this.platform,
    required this.status,
    required this.pricePaid,
    required this.hoursPlayed,
    this.rating, // Optional
    required this.purchaseDate,
  });

  // Calculate Cost Per Hour (CPH) - Pure business logic
  double get costPerHour {
      // 1. If it was free, the cost per hour is always 0, regardless of time played.
      if (pricePaid <= 0) return 0.0;
      
      // 2. If you paid for it but haven't played, the cost is infinite (worst ROI possible).
      if (hoursPlayed <= 0) return double.infinity;
      
      // 3. Normal calculation
      return double.parse((pricePaid / hoursPlayed).toStringAsFixed(2));
  }

  @override
  List<Object?> get props => [
        id, 
        title, 
        platform, 
        status, 
        pricePaid, 
        hoursPlayed, 
        rating,
        purchaseDate,
      ];
}