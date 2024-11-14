import 'package:life_expectancy/user_data.dart';

class Calculate {
  final UserData datas;
  const Calculate(this.datas);
  double calc() {
    double res;
    res = 90 + datas.sportDays - datas.cigaretteCount;
    res += datas.height / datas.weight;
    datas.choosedGender == 'Woman' ? res += 3 : res;
    return res;
  }
}
