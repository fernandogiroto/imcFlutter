import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/calculate_button.dart';

class ResultsPage extends StatelessWidget {
  final String imcResult;
  final String resultText;
  final String resultTip;

  ResultsPage(
      {@required this.imcResult,
      @required this.resultText,
      @required this.resultTip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CALCULADORA DE IMC'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'RESULTADO',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colorCard: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText, style: kResultTextStyle),
                    Text(imcResult, style: kIMCTextStyle),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(resultTip,
                          textAlign: TextAlign.center, style: kBodyTextStyle),
                    ),
                  ],
                ),
              ),
            ),
            CalculateButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'NOVO CÁLCULO',
            ),
          ],
        ));
  }
}
