import 'package:cloud_firestore/cloud_firestore.dart';

void setupFirebaseEmulator() {
  const emulatorHost = '192.168.1.7';  // IP جهازك
  const firestorePort = 8080;  // لو شغال على Firestore emulato      // لو شغال على Auth emulator

  FirebaseFirestore.instance.useFirestoreEmulator(emulatorHost, firestorePort);
 
}
