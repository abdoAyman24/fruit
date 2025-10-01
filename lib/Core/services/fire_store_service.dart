import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hup/Core/services/data_base_service.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addUserData({
    required String path,
    required Map<String, dynamic> data,
    required String? documntId,
  }) async {
    if (documntId != null) {
      await firestore.collection(path).doc(documntId).set(data);
    } else {
      firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documntId,
    Map<String, dynamic>? query,
  }) async {
    if (documntId != null) {
      var data = await firestore.collection(path).doc(documntId).get();
      return data.data() as Map<String, dynamic>;
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);
      // return data.docs.map((e)=>e.data()).toList();
      if (query != null) {
        if (query['orderBy'] != null) {
          data = data.orderBy(
            query['orderBy'],
            descending: query['descending'],
          );
        }
        if (query['limit'] != null) {
          data = data.limit(query['limit']);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfUserExist({
    required String path,
    required String document,
  }) async {
    var user = await firestore.collection(path).doc(document).get();
    return user.exists;
  }
}
