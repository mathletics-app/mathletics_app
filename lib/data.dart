import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'data.g.dart';

@HiveType(typeId: 0)
class PracticeEntry extends HiveObject {
  @HiveField(0)
  late String topic;

  @HiveField(1)
  late bool isCorrect;

  @HiveField(2)
  late DateTime timestamp;

  PracticeEntry({required this.topic, required this.isCorrect, required this.timestamp});
}

class PracticeData {
  static late Box<PracticeEntry> _box;

  static Future<void> init() async {
    
    Hive.registerAdapter(PracticeEntryAdapter());
    _box = await Hive.openBox<PracticeEntry>('practice_entries');
  }

  static void saveAnswer(String topic, bool isCorrect, DateTime time) {
    final entry = PracticeEntry(topic: topic, isCorrect: isCorrect, timestamp: time);
    _box.add(entry);
  }

  static List<PracticeEntry> getAllEntries() {
    return _box.values.toList();
  }

  static List<PracticeEntry> getEntriesForDay(DateTime day) {
    final start = DateTime(day.year, day.month, day.day);
    final end = start.add(const Duration(days: 1));
    return _box.values.where((e) => e.timestamp.isAfter(start) && e.timestamp.isBefore(end)).toList();
  }

  static Map<String, int> getTopicStats() {
    Map<String, int> topicCounts = {};
    for (var e in _box.values) {
      topicCounts[e.topic] = (topicCounts[e.topic] ?? 0) + 1;
    }
    return topicCounts;
  }

  static Map<String, double> getTopicAccuracy() {
    Map<String, List<bool>> tracker = {};
    for (var e in _box.values) {
      tracker.putIfAbsent(e.topic, () => []).add(e.isCorrect);
    }
    Map<String, double> accuracy = {};
    tracker.forEach((topic, results) {
      final correct = results.where((e) => e).length;
      accuracy[topic] = results.isEmpty ? 0 : correct / results.length;
    });
    return accuracy;
  }

  static Future<void> clearAll() async {
    await _box.clear();
  }
}
