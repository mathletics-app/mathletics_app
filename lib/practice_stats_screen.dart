import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'data.dart';

class PracticeStatsScreen extends StatefulWidget {
  const PracticeStatsScreen({super.key});

  @override
  State<PracticeStatsScreen> createState() => _PracticeStatsScreenState();
}

class _PracticeStatsScreenState extends State<PracticeStatsScreen> {
  final Map<String, String> topicAbbreviations = {
    "Sets and Intervals": "SAI",
    "Functions": "FUN",
    "Limits and Continuity": "LAC",
    "Derivatives": "DER",
    "Applications of Derivatives": "AOD",
    "Intro to Integration": "ITI",
  };

  int currentStreak = 0;
  int longestStreak = 0;

  void calculateStreaks() {
    final entries = PracticeData.getAllEntries()
      ..sort((a, b) => a.timestamp.compareTo(b.timestamp));

    Set<String> practicedDays = entries
        .map((e) => DateFormat('yyyy-MM-dd').format(e.timestamp))
        .toSet();

    DateTime today = DateTime.now();
    int tempStreak = 0;
    int maxStreak = 0;

    for (int i = 0; i < 365; i++) {
      final day = today.subtract(Duration(days: i));
      final formatted = DateFormat('yyyy-MM-dd').format(day);

      if (practicedDays.contains(formatted)) {
        tempStreak++;
        maxStreak = max(maxStreak, tempStreak);
      } else {
        if (i == 0) continue; // Allow break today
        if (tempStreak > 0) break;
      }
    }

    setState(() {
      currentStreak = tempStreak;
      longestStreak = maxStreak;
    });
  }


  List<MapEntry<DateTime, int>> weeklyData = [];
  Map<String, double> topicAccuracy = {};
  Map<String, int> topicClicks = {};

  final Map<String, Color> _topicColors = {};
  final List<Color> _availableColors = [
    Color(0xFFfbbf24),
    Color(0xFF06b6d4),
    Color(0xFF8b5cf6),
    Color(0xFF10b981),
    Color(0xFFec4899),
    Color(0xFFf97316),
    Color(0xFF3b82f6),
  ];

  Color _getColorForTopic(String topic) {
    if (!_topicColors.containsKey(topic)) {
      _topicColors[topic] =
      _availableColors[_topicColors.length % _availableColors.length];
    }
    return _topicColors[topic]!;
  }

  @override
  void initState() {
    super.initState();
    loadStats();
  }

  void loadStats() {
    DateTime today = DateTime.now();
    weeklyData.clear();
    topicAccuracy.clear();
    topicClicks.clear();
    calculateStreaks();
    setState(() {});

    DateTime monday = today.subtract(Duration(days: today.weekday - 1));

    for (int i = 0; i < 7; i++) {
      DateTime day = monday.add(Duration(days: i));
      int count = PracticeData.getEntriesForDay(day).length;
      weeklyData.add(MapEntry(day, count));
    }

    final entries = PracticeData.getAllEntries();
    Map<String, List<bool>> tracker = {};

    for (var entry in entries) {
      tracker.putIfAbsent(entry.topic, () => []);
      tracker[entry.topic]!.add(entry.isCorrect);
    }

    for (var e in tracker.entries) {
      topicClicks[e.key] = e.value.length;
      int correct = e.value.where((b) => b).length;
      topicAccuracy[e.key] = correct / e.value.length;
    }

    setState(() {});
  }

  int _calculateInterval(int maxY) {
    if (maxY <= 10) return 1;
    if (maxY <= 20) return 2;
    if (maxY <= 40) return 4;
    if (maxY <= 100) return 10;
    return 20;
  }

  Widget _buildSection(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff0b4a93))),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: content,
        ),
        const SizedBox(height: 28),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    int maxClicks = weeklyData.map((e) => e.value).fold(0, max);
    int interval = _calculateInterval(maxClicks);

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: const Text(
          "Your Practice Stats",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0b4a93),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: loadStats),
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () async {
              await PracticeData.clearAll();
              loadStats();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: (weeklyData.every((e) => e.value == 0) && topicClicks.isEmpty)
              ? Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Text(
                "You haven’t practiced yet. Start practicing to see your stats here!",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFB8860B),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
              : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Current Streak",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "$currentStreak days",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0b4a93),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Longest Streak",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "$longestStreak days",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0b4a93),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Weekly Practice Section
              LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth >= 700;

                  return Flex(
                    direction: isWide ? Axis.horizontal : Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: isWide ? 2 : 0,
                        child: _buildSection(
                          "Weekly Practice",
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: SizedBox(
                                  height: 320,
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final barWidth = 60.0;

                                      int maxClicks = weeklyData.map((e) => e.value).fold(0, max);
                                      int interval = maxClicks >= 50 ? 10 : 5;
                                      double maxY = (maxClicks <= 10)
                                          ? 10
                                          : ((maxClicks / interval).ceil() * interval + interval).toDouble();


                                      // Calculate Monday of current week
                                      final now = DateTime.now();
                                      final thisMonday = now.subtract(Duration(days: now.weekday - 1));
                                      final weekStartIndex = weeklyData.indexWhere((e) =>
                                      e.key.year == thisMonday.year &&
                                          e.key.month == thisMonday.month &&
                                          e.key.day == thisMonday.day);

                                      // We want to start the scroll offset so Monday is near left edge
                                      // But still allow scrolling left for previous weeks (if any).
                                      // So scroll offset is max(0, Monday position - 16)
                                      final scrollController = ScrollController();

                                      WidgetsBinding.instance.addPostFrameCallback((_) {
                                        if (scrollController.hasClients) {
                                          // Animate to Monday's position on first build
                                          scrollController.animateTo(
                                            max(0, (weekStartIndex * barWidth) - 16),
                                            duration: const Duration(milliseconds: 300),
                                            curve: Curves.easeOut,
                                          );
                                        }
                                      });

                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        controller: scrollController,
                                        child: SizedBox(
                                          width: max(constraints.maxWidth, weeklyData.length * barWidth + 40),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8),
                                            child: SizedBox(
                                              width: weeklyData.length * barWidth,
                                              height: 260,
                                              child : Padding(
                                                padding: const EdgeInsets.only(top: 8),
                                                child: BarChart(
                                                  BarChartData(
                                                    minY: 0,
                                                    maxY: maxY,
                                                    barGroups: weeklyData.asMap().entries.map((entry) {
                                                      int index = entry.key;
                                                      int count = entry.value.value;
                                                      return BarChartGroupData(
                                                        x: index,
                                                        barRods: [
                                                          BarChartRodData(
                                                            fromY: 0,
                                                            toY: count.toDouble(),
                                                            color: const Color(0xff004d40),
                                                            width: 20,
                                                            borderRadius: BorderRadius.circular(6),
                                                          ),
                                                        ],
                                                        showingTooltipIndicators: [],
                                                      );
                                                    }).toList(),
                                                    titlesData: FlTitlesData(
                                                      leftTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize: 40, // give it more room horizontally if needed
                                                          getTitlesWidget: (value, meta) {
                                                            if (value == 0) return const SizedBox.shrink();
                                                            return Padding(
                                                              padding: const EdgeInsets.only(top: 2), // push label down slightly
                                                              child: Text(
                                                                value.toInt().toString(),
                                                                style: const TextStyle(fontSize: 10),
                                                                textAlign: TextAlign.right,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      bottomTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize: 30,
                                                          getTitlesWidget: (value, meta) {
                                                            int index = value.toInt();
                                                            if (index < 0 || index >= weeklyData.length) {
                                                              return const SizedBox.shrink();
                                                            }
                                                            String label = DateFormat('E').format(weeklyData[index].key);
                                                            return Padding(
                                                              padding: const EdgeInsets.only(top: 4),
                                                              child: Transform.rotate(
                                                                angle: -0.5,
                                                                child: Text(
                                                                  label,
                                                                  style: const TextStyle(fontSize: 10),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                                    ),
                                                    borderData: FlBorderData(show: false),
                                                    gridData: FlGridData(
                                                      show: true,
                                                      horizontalInterval: interval.toDouble(),
                                                    ),
                                                    barTouchData: BarTouchData(
                                                      enabled: true,
                                                      touchCallback: (event, response) {
                                                        if (response == null || response.spot == null) return;
                                                        if (event is FlTapUpEvent) {
                                                          final idx = response.spot!.touchedBarGroupIndex;
                                                          final completedCount = weeklyData[idx].value;
                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                "${DateFormat('EEEE').format(weeklyData[idx].key)}: $completedCount questions completed",
                                                              ),
                                                              duration: const Duration(seconds: 2),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      handleBuiltInTouches: true,
                                                      touchTooltipData: BarTouchTooltipData(
                                                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                                          return BarTooltipItem(
                                                            '${rod.toY.toInt()}',
                                                            const TextStyle(color: Colors.white, fontSize: 12),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Note: Click a bar to see number of questions that day",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (isWide) const SizedBox(width: 24),
                      Expanded(
                        flex: isWide ? 1 : 0,
                        child: _buildSection(
                          "Topic Accuracy Pie Chart",
                          Center(
                            child: SizedBox(
                              height: 260,
                              child: PieChart(
                                PieChartData(
                                  centerSpaceRadius: 20,
                                  sections: topicAccuracy.entries.map((entry) {
                                    final percentage = (entry.value * 100).toInt();
                                    return PieChartSectionData(
                                      value: entry.value,
                                      title: "${entry.key}\n$percentage%",
                                      radius: 110,
                                      titleStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      color: _getColorForTopic(entry.key),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 24),

// Topic Accuracy Graph + Abbreviations in one row
              LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth >= 700;

                  return _buildSection(
                    "Topic Accuracy Comparison Graph",
                    Flex(
                      direction: isWide ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: isWide ? 2 : 0,
                          child: SizedBox(
                            height: 260,
                            child: BarChart(
                              BarChartData(
                                maxY: 100,
                                minY: 0,
                                barGroups: topicClicks.entries.map((entry) {
                                  final topic = entry.key;
                                  final acc = topicAccuracy[topic] ?? 0.0;
                                  return BarChartGroupData(
                                    x: topic.hashCode,
                                    barRods: [
                                      BarChartRodData(
                                        fromY: 0,
                                        toY: (acc * 100).toInt().toDouble(),
                                        width: 24,
                                        color: _getColorForTopic(topic),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ],
                                    showingTooltipIndicators: [0],
                                  );
                                }).toList(),
                                titlesData: FlTitlesData(
                                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 42,
                                      getTitlesWidget: (value, meta) {
                                        final topic = topicClicks.keys.firstWhere(
                                              (key) => key.hashCode == value.toInt(),
                                          orElse: () => "",
                                        );
                                        final abbr = topicAbbreviations[topic] ?? (topic.length >= 3 ? topic.substring(0, 3) : topic);
                                        return Transform.rotate(
                                          angle: -0.9,
                                          child: Text(
                                            abbr,
                                            style: const TextStyle(fontSize: 8),
                                            textAlign: TextAlign.center,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 10,
                                      getTitlesWidget: (value, meta) => Text(
                                        "${value.toInt()}%",
                                        style: const TextStyle(fontSize: 10),
                                      ),
                                      reservedSize: 40,
                                    ),
                                  ),
                                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                ),
                                gridData: FlGridData(show: false),
                                borderData: FlBorderData(show: false),
                                barTouchData: BarTouchData(
                                  enabled: true,
                                  touchTooltipData: BarTouchTooltipData(
                                    tooltipPadding: const EdgeInsets.all(6),
                                    tooltipMargin: 8,
                                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                      final topic = topicClicks.keys.firstWhere(
                                            (key) => key.hashCode == group.x,
                                        orElse: () => "",
                                      );
                                      final value = rod.toY.toInt();
                                      return BarTooltipItem(
                                        '$value%',
                                        const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          flex: isWide ? 1 : 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'Abbreviations used for topics:\n'
                                  'SAI = Sets and Intervals\n'
                                  'FUN = Functions\n'
                                  'LAC = Limits and Continuity\n'
                                  'DER = Derivatives\n'
                                  'AOD = Applications of Derivatives\n'
                                  'ITI = Intro to Integration\n',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}