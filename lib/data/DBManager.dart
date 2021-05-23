import 'package:hive/hive.dart';
import 'package:my_way/data/adapters/activity_model.dart';

class DBManager {
  void addACtivity(ActivityModel activity) {
    final activityBox = Hive.box('activity');
    activityBox.add(activity);
    print('Name: ${activityBox.get('Run')}');
  }
}
