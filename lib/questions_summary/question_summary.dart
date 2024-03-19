import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/questions_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((summary) {
            return SummaryItem(summary);
            // return Row(
            //   children: [
            //     Text(((summary['question_index'] as int) + 1).toString()),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Text(summary['question'] as String),
            //           const SizedBox(height: 5),
            //           Text(summary['answer'] as String),
            //           Text(summary['correct_answer'] as String)
            //         ],
            //       ),
            //     )
            //   ],
            // );
          }).toList(),
        ),
      ),
    );
  }
}
