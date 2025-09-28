import 'dart:convert';

import 'package:fruit_hup/Core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hup/Feature/Auth/data/Model/user_model.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';
import 'package:fruit_hup/constance.dart';

UserEntity getUser()  {
  var jsonData =  SharedPreferencesSingleton.getUser(KUSerData);
  var userEntitt = UserModel.fromJeson(jsonDecode(jsonData));
  return userEntitt;
}
