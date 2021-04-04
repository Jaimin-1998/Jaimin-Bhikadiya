import 'package:get/get.dart';
import 'package:intl/intl.dart';

String getTranslator(String key) {
  try{
    return key.tr;
  } catch (e) {
    return "";
  }
}

final ddMMMYYYYFormat = new DateFormat('ddMMM yyyy');
