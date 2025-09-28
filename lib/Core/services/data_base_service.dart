abstract class DataBaseService {
  Future<void> addUserData({
    required String path,
    required Map<String, dynamic> data,
    required String? documntId,
  });
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documntId,
  });
  Future<bool> checkIfUserExist({required String path ,required String document});
}
