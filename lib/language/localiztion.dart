import 'package:get/route_manager.dart';
import 'package:udemy_project/language/ar.dart';
import 'package:udemy_project/language/en.dart';
import 'package:udemy_project/language/fr.dart';

import '../utils/my_string.dart';


class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    ene: en,
    ara: ar,
    frf: fr,
  };
}