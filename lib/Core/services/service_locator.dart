import 'package:fruit_hup/Core/services/firebase_auth_service.dart';
import 'package:fruit_hup/Feature/Auth/data/repoImple/repo_impl.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(RepoImpl(
     firebaseAuthService:  getIt<FirebaseAuthService>(),
  ));

}