import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

import 'widget/questions_indicator/question_indicator_widget.dart';
import 'widget/quiz/quiz_widget.dart';

class ChallangePage extends StatefulWidget {
  const ChallangePage({Key? key}) : super(key: key);
  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: SafeArea(
          minimum: EdgeInsets.only(top: 30),
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(title: "O que o flutter faz em sua totalidade ?"),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.fromBorderSide(
                  BorderSide(color: AppColors.border),
                ),
              ),
              width: 170,
              height: 48,
              child: Text(
                "Pular",
                style: AppTextStyles.heading15,
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.darkGreen,
              ),
              width: 170,
              height: 48,
              child: Text(
                "Confirmar",
                style: AppTextStyles.heading15White,
              ),
            )
          ],
        ),
      ),
    );
  }
}
