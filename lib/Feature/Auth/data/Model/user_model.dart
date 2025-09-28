import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup/Feature/Auth/domain/Entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.id, required super.email, required super.name});

  factory UserModel.fromFirebase(User user, String name) {
    return UserModel(id: user.uid, email: user.email ?? '', name: name);
  }
  factory UserModel.fromJeson(Map<String, dynamic> data) {
    return UserModel(id: data['uId'], email: data['email'], name: data['name']);
  }
  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(id: user.id, email: user.email, name: user.name);
  }

  toMap() {
    return {"uId": id, "name": name, "email": email};
  }
}
