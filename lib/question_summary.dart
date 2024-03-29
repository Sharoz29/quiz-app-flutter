import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            ((data) {
              return SummaryItem(itemData: data);
            }),
          ).toList(),
        ),
      ),
    );
  }
}
