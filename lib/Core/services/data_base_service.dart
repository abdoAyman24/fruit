
abstract class DataBaseService {
  Future<void> addUserData({
    required String path,
    required Map<String, dynamic> data,
    required String? documntId,
  });
  Future<dynamic> getData({
    required String path,
     String? documntId,
     Map<String ,dynamic>? query,

  });
  Future<bool> checkIfUserExist({required String path ,required String document});
}
