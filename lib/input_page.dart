import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/constants.dart';
import 'package:life_expectancy/gender_info.dart';
import 'package:life_expectancy/my_container.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? choosedGender;
  double cigaretteCount = 0;
  double sportDays = 0;
  int height = 170;
  int weight = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Expectancy'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: changeBodyUnit(unitName: "HEIGHT"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: changeBodyUnit(unitName: "WEIGHT"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('How many days are you doing sport in a week?'),
                  Text(
                    '${sportDays.toInt()}',
                    style: kTextStyle,
                  ),
                  Slider(
                    activeColor: Colors.blue,
                    min: 0,
                    max: 7,
                    value: sportDays,
                    divisions: 7,
                    onChanged: (newValue) {
                      setState(() {
                        sportDays = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('How many cigarettes are you smoked in one day?'),
                  Text(
                    '${cigaretteCount.toInt()}',
                    style: kTextStyle,
                  ),
                  Slider(
                    activeColor: Colors.blue,
                    min: 0,
                    max: 30,
                    value: cigaretteCount,
                    divisions: 30,
                    onChanged: (newValue) {
                      setState(() {
                        cigaretteCount = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        choosedGender = 'Woman';
                      });
                    },
                    color:
                        choosedGender == 'Woman' ? Colors.pink : Colors.white,
                    child: const GenderInfo(
                      gender: 'Woman',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        choosedGender = 'Man';
                      });
                    },
                    color: choosedGender == 'Man'
                        ? Colors.lightBlue
                        : Colors.white,
                    child: const GenderInfo(
                      gender: 'Man',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row changeBodyUnit({required String unitName}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              unitName,
              style: kTextStyle,
            )),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            unitName == "HEIGHT" ? height.toString() : weight.toString(),
            style: kTextStyle,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: 36,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.lightBlue)),
                  onPressed: () {
                    setState(() {
                      if (unitName == 'HEIGHT')
                        height++;
                      else
                        weight++;
                    });
                  },
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    size: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ButtonTheme(
                minWidth: 36,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                      color: Colors.lightBlue,
                    )),
                    onPressed: () {
                      setState(() {
                        if (unitName == 'HEIGHT')
                          height--;
                        else {
                          weight--;
                        }
                      });
                    },
                    child: FaIcon(
                      FontAwesomeIcons.minus,
                      size: 16,
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
