import 'package:hive_flutter/hive_flutter.dart';

import '../models/game.dart';
import '../utils.dart';

class DB {
  static String boxName = 'plinkartbox';
  static String keyName = 'modelsList';
  static List<Game> modelsList = [];
}

Future<void> initHive() async {
  try {
    await Hive.initFlutter();
    // await Hive.deleteBoxFromDisk(DB.boxName);
    Hive.registerAdapter(GameAdapter());
  } catch (e) {
    logger(e);
  }
}

Future<void> getModels() async {
  try {
    final box = await Hive.openBox(DB.boxName);
    List data = box.get(DB.keyName) ?? [];
    DB.modelsList = data.cast<Game>();
    logger(DB.modelsList.length);
  } catch (e) {
    logger(e);
  }
}

Future<void> updateModels() async {
  try {
    final box = await Hive.openBox(DB.boxName);
    box.put(DB.keyName, DB.modelsList);
    DB.modelsList = await box.get(DB.keyName);
  } catch (e) {
    logger(e);
  }
}
