import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final QuizModel quiz;
  const QuizCardWidget({Key? key, required this.quiz}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 20),
          Text(
            quiz.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "${quiz.questionsAnswered} de ${quiz.questions.length}",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: ProgressIndicatorWidget(
                      value: quiz.questionsAnswered / quiz.questions.length))
            ],
          )
        ],
      ),
    );
  }
}
