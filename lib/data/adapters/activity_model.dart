import 'package:hive/hive.dart';
part 'activity_model.g.dart';

@HiveType(typeId: 0)
class ActivityModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  String duration;

  @HiveField(2)
  String imageUrl;

  ActivityModel({this.name, this.duration, this.imageUrl});
}
