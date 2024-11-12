import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  child: MyContainer(),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
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
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
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
}
