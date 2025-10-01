import 'package:fruit_hup/Core/Product_Repo/product_repo.dart';
import 'package:fruit_hup/Core/Product_Repo/product_repo_impl.dart';
import 'package:fruit_hup/Core/services/data_base_service.dart';
import 'package:fruit_hup/Core/services/fire_store_service.dart';
import 'package:fruit_hup/Core/services/firebase_auth_service.dart';
import 'package:fruit_hup/Feature/Auth/data/repoImple/repo_impl.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseService>(FireStoreService());
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(dataBaseService: getIt.get<DataBaseService>()),
  );

  getIt.registerSingleton<AuthRepo>(
    RepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      dataBaseService: getIt.get<DataBaseService>(),
    ),
  );
}
