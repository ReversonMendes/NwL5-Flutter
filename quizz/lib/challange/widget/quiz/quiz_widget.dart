import 'package:DevQuiz/challange/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
            child: Text(
              title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 24),
          AwnserWidget(
            title:
                "Possibilidade a criação de aplicativos compilado nativamente",
            isRight: true,
            isSelect: true,
          ),
          AwnserWidget(
            title:
                "Possibilidade a criação de aplicativos compilado nativamente",
            isRight: false,
            isSelect: true,
          ),
          AwnserWidget(
              title:
                  "Possibilidade a criação de aplicativos compilado nativamente"),
        ],
      ),
    );
  }
}
